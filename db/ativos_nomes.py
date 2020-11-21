import sqlite3
import pandas as pd
import datetime as dt
import warnings
warnings.filterwarnings('ignore')

import requests
import yfinance as yf
yf.pdr_override()

def create_connection(db_file):
    conn = None
    try:
        conn = sqlite3.connect(db_file)
    except Exception as e:
        print(e)
    return conn

#conn = create_connection('development.sqlite3')
conn = create_connection('production.sqlite3')

cursor = conn.cursor()

# Cria uma linha com os ativos do app
cursor.row_factory = lambda cursor, row: row[0]
cursor.execute("SELECT ticker FROM 'Ativos' WHERE tipo_id = 3 or tipo_id = 4")
ativos_do_meu_app = cursor.fetchall()

# Busca no google sheet e retorna um DataFrame com ticker(index) e valor atual
url = 'https://docs.google.com/spreadsheets/d/1oZ7y0fMHo0QvNYBmsMURwunxonzEz-Euf5BOMQGxpgo/edit?usp=sharing'
header = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36"  }
r = requests.get(url, headers=header)
df_google_sheet = pd.read_html(r.text,  decimal=',', thousands='.')[0]
df_google_sheet = df_google_sheet.drop('Unnamed: 0', axis=1).reset_index(drop=True)
df_google_sheet.columns = ["ticker","ticker_base","ticker_yf"]
df_google_sheet = df_google_sheet.set_index('ticker')
print("DataFrame do google sheets")
print(df_google_sheet)

# Acessa o banco de dados e retorna um DataFrame com ticker(index) e valor atual
df_meu_banco = pd.read_sql_query("SELECT ticker, ticker_base, ticker_yf FROM Ativos WHERE tipo_id = 3 or tipo_id = 4 ORDER BY ticker", conn, index_col="ticker")
print("DataFrame Meu Banco")
print(df_meu_banco)

# Atualiza o DataFrame do meu banco com os valores do Google Sheets
for index, row in df_meu_banco.iterrows():
   df_meu_banco.loc[index]['ticker_base'] = df_google_sheet.loc[index]['ticker_base']
for index, row in df_meu_banco.iterrows():
   df_meu_banco.loc[index]['ticker_yf'] = df_google_sheet.loc[index]['ticker_yf']
print("DataFrame Atualizado")
print(df_meu_banco)

#Atualiza o banco de dados com os valores do DataFrame do meu banco atualizado
for index, row in df_meu_banco.iterrows():
    query = f"Update Ativos set ticker_base = ?, ticker_yf = ? where ticker = ?"
    params = (row['ticker_base'], row['ticker_yf'], index,)
    cursor.execute(query, params)
conn.commit()
    
cursor.close()
conn.close()

print('Atualizado com sucesso')