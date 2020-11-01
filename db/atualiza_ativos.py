print("Programa atualiza ativos foi executado.")

# importar pacotes (pacotes já instalados)
# import yfinance as yf
# import pandas as pd
# import pandas_datareader.data as pdr
# import datetime as dt


## 1) Conecta com o banco de dados

# import sqlite3
# from sqlite3 import Error


# def create_connection(db_file):
#     """ create a database connection to the SQLite database
#         specified by the db_file
#     :param db_file: database file
#     :return: Connection object or None
#     """
#     conn = None
#     try:
#         conn = sqlite3.connect(db_file)
#     except Error as e:
#         print(e)

#     return conn.cursor()



# tabela_conectada = create_connection('development.sqlite3')
# tabela_conectada.execute("SELECT ticker, valor_atual FROM 'Ativos'")
# print(tabela_conectada.fetchall())

    
# Com pandas


import sqlite3
import pandas as pd

# Create your connection.
tabela_conectada = sqlite3.connect('development.sqlite3')

df = pd.read_sql_query("SELECT * FROM Ativos", tabela_conectada)

print(df.head(50))

## 2) Busca cotação 

# yf.pdr_override() # configuração do Yahoo Finance
# pd.set_option('precision', 7)  # tamanho da casas decimasi
# pd.set_option('use_inf_as_na', True)  # converter os valores 'inf' em NaN

# data_atual = dt.datetime.now() # Pegar data atual

# codigos = ['SAPR4.SA', 'ITSA4.SA', 'CCRO3.SA'] # definir a lista de codigos para buscar a cotação


## 3) Acessa a tabela Ativos no banco de dados e Atualiza o campo valor_atual 


#

### Teste script amigo

