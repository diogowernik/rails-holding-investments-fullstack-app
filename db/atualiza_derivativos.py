import sqlite3
import pandas as pd
import string
import warnings
warnings.filterwarnings('ignore')

import requests

def create_connection(db_file):
    conn = None
    try:
        conn = sqlite3.connect(db_file)
    except Exception as e:
        print(e)
    return conn

conn = create_connection('production.sqlite3')
cursor = conn.cursor()

df_meu_banco = pd.read_sql_query("SELECT codigo, valor_hoje FROM deriva_moves WHERE estado_id = 1", conn, index_col="codigo")
#print(df_meu_banco)

url = 'https://www.tradergrafico.com.br/opcoes/'
header = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36"}
r = requests.get(url, headers=header)
df_banco_site = pd.read_html(r.text,  decimal=',', thousands='.')[0]
df_banco_site = df_banco_site.drop([0, 2, 3, 5, 6], axis=1).drop([0,1])
df_banco_site.columns = ["codigo", "valor_hoje"]
df_banco_site = df_banco_site.set_index('codigo')
df_banco_site['valor_hoje'] = df_banco_site['valor_hoje'].str[3:]
df_banco_site['valor_hoje'] = df_banco_site['valor_hoje'].str.replace(',', '.')
#print(df_banco_site.head())

for index, row in df_meu_banco.iterrows():
    df_meu_banco.loc[index]['valor_hoje'] = df_banco_site.loc[index]['valor_hoje']
    
#print(df_meu_banco)

# Atualiza o banco de dados com os valores do DataFrame do meu banco atualizado

for index, row in df_meu_banco.iterrows():
    query = f"Update deriva_moves set valor_hoje = ? where codigo = ?"
    params = (row['valor_hoje'], index,)
    cursor.execute(query, params)
    
conn.commit()
    
cursor.close()
conn.close()

print('Atualizado cotação dos derivativos com sucesso')

