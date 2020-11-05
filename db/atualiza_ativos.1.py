import sqlite3
import pandas as pd
# import pandas_datareader.data as pdr
import datetime as dt
import yfinance as yf
yf.pdr_override()

def create_connection(db_file):
    conn = None
    try:
        conn = sqlite3.connect(db_file)
    except Exception as e:
        print(e)
    return conn

# Função para criar uma lista dos ativos do banco de dados
conn = create_connection('development.sqlite3')

cursor = conn.cursor()
cursor.row_factory = lambda cursor, row: row[0]
cursor.execute("SELECT ticker FROM 'Ativos' WHERE tipo_id = 3")
ativos_do_meu_app = cursor.fetchall()

# Função para buscar ativos do yahoo e criar um dataframe com ticker e ultima cotação
dados_dos_ativos_pelo_yahoo = yf.download(ativos_do_meu_app, period="1min")["Adj Close"]
df_yahoo_banco = dados_dos_ativos_pelo_yahoo.dropna().T.reset_index()
df_yahoo_banco.columns = ["ticker", "valor_atual"]
df_yahoo_banco = df_yahoo_banco.set_index('ticker')

# Imprime o dataframe do yahoo
print("DataFrame Yahoo.")
print(df_yahoo_banco)

df_meu_banco = pd.read_sql_query("SELECT ticker, valor_atual FROM Ativos WHERE tipo_id = 3 ORDER BY ticker", conn, index_col="ticker")

print("DataFrame Diogo.")
print(df_meu_banco)

for index, row in df_meu_banco.iterrows():
    df_meu_banco.loc[index]['valor_atual'] = df_yahoo_banco.loc[index]['valor_atual']

print("DataFrame Diogo atualizada")
print(df_meu_banco)

for index, row in df_meu_banco.iterrows():
    query = f"Update Ativos set valor_atual = ? where ticker = ?"
    params = (row['valor_atual'], index,)
    cursor.execute(query, params)

conn.commit()

df_meu_banco_final = pd.read_sql_query("SELECT ticker, valor_atual FROM Ativos WHERE tipo_id = 3 ORDER BY ticker", conn, index_col="ticker")

print("Banco ao final")
print(df_meu_banco_final)

cursor.close()
conn.close()