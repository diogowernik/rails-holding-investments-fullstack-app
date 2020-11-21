import sqlite3
import pandas as pd
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

conn = create_connection('development.sqlite3')
#conn = create_connection('production.sqlite3')

cursor = conn.cursor()

# Cria uma linha com os ativos do app
cursor.row_factory = lambda cursor, row: row[0]
cursor.execute("SELECT ticker_yf FROM 'Ativos' WHERE tipo_id = 3 or tipo_id =4")
ativos_do_meu_app = cursor.fetchall()
# print(ativos_do_meu_app)
# Busca no yahoo os ativos do app e retorna um DataFrame com ticker(index) e valor atual
dados_dos_ativos_pelo_yahoo = yf.download(ativos_do_meu_app, period="1min")["Adj Close"]
df_yahoo_banco = dados_dos_ativos_pelo_yahoo.T.reset_index()
df_yahoo_banco.columns = ["ticker_yf", "valor_atual", "valor_duplicado"]
df_yahoo_banco = df_yahoo_banco.set_index('ticker_yf')
# print(df_yahoo_banco)
# Acessa o banco de dados e retorna um DataFrame com ticker(index) e valor atual
df_meu_banco = pd.read_sql_query("SELECT ticker_yf, valor_atual FROM Ativos WHERE tipo_id = 3 or tipo_id = 4 ORDER BY ticker_yf", conn, index_col="ticker_yf")

# Atualiza o DataFrame do meu banco com os valores do Yahoo
for index, row in df_meu_banco.iterrows():
    df_meu_banco.loc[index]['valor_atual'] = df_yahoo_banco.loc[index]['valor_atual']
# print(df_meu_banco)
# Atualiza o banco de dados com os valores do DataFrame do meu banco atualizado
for index, row in df_meu_banco.iterrows():
    query = f"Update Ativos set valor_atual = ? where ticker_yf = ?"
    params = (row['valor_atual'], index,)
    cursor.execute(query, params)
conn.commit()
    
cursor.close()
conn.close()

print('Atualizado com sucesso')