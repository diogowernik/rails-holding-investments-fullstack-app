# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# user = User.new
# user.email = 'admin@portaisdobem.org'
# user.password = '123456'
# user.password_confirmation = '123456'
# user.save!

# Tipo.create(nome: 'Ações')
# Tipo.create(nome: 'Fundos Imobiliários')
# Tipo.create(nome: 'Opções')

# Ativo.create(ticker: 'BBSA3', tipo_id: 1)
# Ativo.create(ticker: 'BBSE3', tipo_id: 1)
# Ativo.create(ticker: 'EGIE3', tipo_id: 1)
# Ativo.create(ticker: 'TAEE11', tipo_id: 1)
# Ativo.create(ticker: 'ITSA4', tipo_id: 1)
# Ativo.create(ticker: 'ITUB4', tipo_id: 1)
# Ativo.create(ticker: 'BBDC4', tipo_id: 1)
# Ativo.create(ticker: 'CMIG4', tipo_id: 1)
# Ativo.create(ticker: 'SANB11', tipo_id: 1)
# Ativo.create(ticker: 'VIVT4', tipo_id: 1)
# Ativo.create(ticker: 'EQTL3', tipo_id: 1)
# Ativo.create(ticker: 'SBSP3', tipo_id: 1)
# Ativo.create(ticker: 'TRPL4', tipo_id: 1)

# Ativo.create(ticker: 'HGRU11', tipo_id: 2)
# Ativo.create(ticker: 'TXRF11', tipo_id: 2)
# Ativo.create(ticker: 'VVPR11', tipo_id: 2)
# Ativo.create(ticker: 'KNRI11', tipo_id: 2)

# Ativo.create(ticker: 'HCRI11', tipo_id: 2)

# Ativo.create(ticker: 'GGRC11', tipo_id: 2)
# Ativo.create(ticker: 'HGLG11', tipo_id: 2)
# Ativo.create(ticker: 'ALZR11', tipo_id: 2)
# Ativo.create(ticker: 'BTLG11', tipo_id: 2)
# Ativo.create(ticker: 'FIIB11', tipo_id: 2)
# Ativo.create(ticker: 'HLOG11', tipo_id: 2)
# Ativo.create(ticker: 'XPIN11', tipo_id: 2)
# Ativo.create(ticker: 'XPLG11', tipo_id: 2)
# Ativo.create(ticker: 'VILG11', tipo_id: 2)

# Ativo.create(ticker: 'IRDM11', tipo_id: 2)
# Ativo.create(ticker: 'KNIP11', tipo_id: 2)
# Ativo.create(ticker: 'MXRF11', tipo_id: 2)
# Ativo.create(ticker: 'OUCY11', tipo_id: 2)
# Ativo.create(ticker: 'RECR11', tipo_id: 2)
# Ativo.create(ticker: 'TGAR11', tipo_id: 2)
# Ativo.create(ticker: 'TORD11', tipo_id: 2)
# Ativo.create(ticker: 'VRTA11', tipo_id: 2)

# Ativo.create(ticker: 'HFOF11', tipo_id: 2)
# Ativo.create(ticker: 'HGFF11', tipo_id: 2)
# Ativo.create(ticker: 'MGFF11', tipo_id: 2)
# Ativo.create(ticker: 'BCFF11', tipo_id: 2)

# Carteira.create(nome: 'Warren Buffet', user_id: 1)
# Carteira.create(nome: 'Ray Dalio', user_id: 1)

# Investimento.create(carteira_id: 1, ativo_id: 1, quantidade: 300)
# Investimento.create(carteira_id: 1, ativo_id: 10, quantidade: 200)
# Investimento.create(carteira_id: 1, ativo_id: 5, quantidade: 400)
# Investimento.create(carteira_id: 1, ativo_id: 25, quantidade: 50)
# Investimento.create(carteira_id: 1, ativo_id: 28, quantidade: 50)
# Investimento.create(carteira_id: 1, ativo_id: 10, quantidade: 100)

# Investimento.create(carteira_id: 2, ativo_id: 4, quantidade: 100)
# Investimento.create(carteira_id: 2, ativo_id: 6, quantidade: 400)
# Investimento.create(carteira_id: 2, ativo_id: 32, quantidade: 50)
# Investimento.create(carteira_id: 2, ativo_id: 34, quantidade: 50)
# Investimento.create(carteira_id: 2, ativo_id: 1, quantidade: 200)

Corretora.create(nome: 'Clear', corretagem: 0.0, corretagem_porcentagem:0.005, corretagem_iss:0.1)
Corretora.create(nome: 'Modal', corretagem: 1.49, corretagem_porcentagem:0.0, corretagem_iss: 0.0)
Corretora.create(nome: 'Capital', corretagem: 1.99, corretagem_porcentagem:0.0, corretagem_iss: 0.0)
Corretora.create(nome: 'XP', corretagem: 11.90, corretagem_porcentagem:0.005, corretagem_iss:0.1)

Atividade.create(investimento_id: 1, carteira_id: 1, ativo_id: 1, valor: 29.40, quantidade: 100, movimento: 'Compra', data: DateTime.strptime('12/03/2020', '%d/%m/%Y'),  corretora_id: 1)
Atividade.create(investimento_id: 1, carteira_id: 1, ativo_id: 1, valor: 29.40, quantidade: 100, movimento: 'Compra', data: DateTime.strptime('24/04/2020', '%d/%m/%Y'),  corretora_id: 1)
Atividade.create(investimento_id: 2, carteira_id: 1, ativo_id: 3, valor: 39.90, quantidade: 100, movimento: 'Compra', data: DateTime.strptime('08/05/2020', '%d/%m/%Y'),  corretora_id: 1)
Atividade.create(investimento_id: 3, carteira_id: 1, ativo_id: 5, valor: 9.40, quantidade: 400, movimento: 'Compra', data: DateTime.strptime('25/09/2020', '%d/%m/%Y'),  corretora_id: 1)
Atividade.create(investimento_id: 4, carteira_id: 1, ativo_id: 25, valor: 115.90, quantidade: 50, movimento: 'Compra', data: DateTime.strptime('30/09/2020', '%d/%m/%Y'),  corretora_id: 1)
Atividade.create(investimento_id: 5, carteira_id: 1, ativo_id: 28, valor: 126.40, quantidade: 50, movimento: 'Compra', data: DateTime.strptime('02/09/2020', '%d/%m/%Y'),  corretora_id: 1)


Atividade.create(investimento_id: 6, carteira_id: 2, ativo_id: 4, valor: 28.40, quantidade: 100, movimento: 'Compra', data: DateTime.strptime('03/07/2020', '%d/%m/%Y'),  corretora_id: 1)
Atividade.create(investimento_id: 7, carteira_id: 2, ativo_id: 6, valor: 24.00, quantidade: 400, movimento: 'Compra', data: DateTime.strptime('14/08/2020', '%d/%m/%Y'),  corretora_id: 1)
Atividade.create(investimento_id: 8, carteira_id: 2, ativo_id: 32, valor: 96.90, quantidade: 50, movimento: 'Compra', data: DateTime.strptime('11/05/2020', '%d/%m/%Y'),  corretora_id: 1)
Atividade.create(investimento_id: 9, carteira_id: 2, ativo_id: 34, valor: 10.30, quantidade: 50, movimento: 'Compra', data: DateTime.strptime('14/07/2020', '%d/%m/%Y'),  corretora_id: 1)
Atividade.create(investimento_id: 10, carteira_id: 2, ativo_id: 1, valor: 28.20, quantidade: 200, movimento: 'Compra', data: DateTime.strptime('01/09/2020', '%d/%m/%Y'),  corretora_id: 1)


Estado.create(status: 'Aberta')
Estado.create(status: 'Exercicio')
Estado.create(status: 'Po')
Estado.create(status: 'Recompra')


Derivativo.create(codigo: 'BBASI355', strike: 35.16,  tipo: 'Call', vencimento: DateTime.strptime('21/09/2020', '%d/%m/%Y') , ativo_id: 1)
Derivativo.create(codigo: 'BBASI455', strike: 34.16,  tipo: 'Call', vencimento: DateTime.strptime('21/09/2020', '%d/%m/%Y') , ativo_id: 1 )
Derivativo.create(codigo: 'BBASU322', strike: 31.91,  tipo: 'Put', vencimento: DateTime.strptime('21/09/2020', '%d/%m/%Y') , ativo_id: 1 )
Derivativo.create(codigo: 'VIVTU480', strike: 47.53,  tipo: 'Put', vencimento: DateTime.strptime('21/09/2020', '%d/%m/%Y') , ativo_id: 10 )
Derivativo.create(codigo: 'BBDCJ210', strike: 21.65,  tipo: 'Call', vencimento: DateTime.strptime('19/10/2020', '%d/%m/%Y') , ativo_id: 8 )
Derivativo.create(codigo: 'ITUBJ249', strike: 24.86,  tipo: 'Call', vencimento: DateTime.strptime('19/10/2020', '%d/%m/%Y') , ativo_id: 6 )


DerivaMove.create(carteira_id: 1, derivativo_id: 1,  estado_id: 3,  valor: 0.23, data: DateTime.strptime('02/09/2020', '%d/%m/%Y'), quantidade:200,  movimento: 'Venda',  corretora_id: 1)
DerivaMove.create(carteira_id: 1, derivativo_id: 2,  estado_id: 3,  valor: 0.60, data: DateTime.strptime('02/09/2020', '%d/%m/%Y'), quantidade:200,  movimento: 'Venda',  corretora_id: 1)
DerivaMove.create(carteira_id: 1, derivativo_id: 3,  estado_id: 2, investimento_id: 1,  valor: 0.38, data: DateTime.strptime('09/09/2020', '%d/%m/%Y'), quantidade:100,  movimento: 'Venda',  corretora_id: 1)
DerivaMove.create(carteira_id: 1, derivativo_id: 4,  estado_id: 2,, investimento_id: 2,  valor: 0.40, data: DateTime.strptime('09/09/2020', '%d/%m/%Y'), quantidade:100,  movimento: 'Venda',  corretora_id: 1)
DerivaMove.create(carteira_id: 1, derivativo_id: 5,  estado_id: 4,  valor: 0.40, data: DateTime.strptime('22/09/2020', '%d/%m/%Y'), quantidade:100,  movimento: 'Venda',  corretora_id: 1)
DerivaMove.create(carteira_id: 1, derivativo_id: 5,  estado_id: 1,  valor: 0.28, data: DateTime.strptime('22/09/2020', '%d/%m/%Y'), quantidade:300,  movimento: 'Venda',  corretora_id: 1)

