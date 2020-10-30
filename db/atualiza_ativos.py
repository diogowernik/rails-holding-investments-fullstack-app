print("Programa atualiza ativos foi executado.")

# importar pacotes (pacotes já instalados)
import yfinance as yf
import pandas as pd
import pandas_datareader.data as pdr
import datetime as dt


## 1) Conecta com o banco de dados

import sqlite3
from sqlite3 import Error


def create_connection(db_file):
    """ create a database connection to the SQLite database
        specified by the db_file
    :param db_file: database file
    :return: Connection object or None
    """
    conn = None
    try:
        conn = sqlite3.connect(development.sqlite3)
    except Error as e:
        print(e)

    return conn


def select_all_ativos(conn):
    """
    Query all rows in the tasks table
    :param conn: the Connection object
    :return:
    """
    cur = conn.cursor()
    cur.execute("SELECT * FROM ativos")

    rows = cur.fetchall()

    for row in rows:
        print(row)


    
    
# development.sqlite3

## 2) Busca cotação 

# yf.pdr_override() # configuração do Yahoo Finance
# pd.set_option('precision', 7)  # tamanho da casas decimasi
# pd.set_option('use_inf_as_na', True)  # converter os valores 'inf' em NaN

# data_atual = dt.datetime.now() # Pegar data atual

# codigos = ['SAPR4.SA', 'ITSA4.SA', 'CCRO3.SA'] # definir a lista de codigos para buscar a cotação


## 3) Acessa a tabela Ativos no banco de dados e Atualiza o campo valor_atual 


#

### Teste script amigo

