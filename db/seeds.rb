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

# Tipo.create([
#   {
#     nome: 'Caixas'
#   },
#   {
#     nome: 'Garantias'
#   },
#   {
#     nome: 'Ações'
#   },
#   {
#     nome: 'Fundos Imobiliários'
#   },
#   {
#     nome: 'Opções'
#   }
# ])


# Ativo.create([
#   {
#     ticker: 'Caixa',
#     tipo_id: 1
#   },
#   {
#     ticker: 'Garantia',
#     tipo_id: 2
#   },
#   {
#     ticker: 'EGIE3',
#     tipo_id: 3
#   },
#   {
#     ticker: 'TAEE11',
#     tipo_id: 3
#   },
#   {
#     ticker: 'ITSA4',
#     tipo_id: 3
#   },
#   {
#     ticker: 'ITUB4',
#     tipo_id: 3
#   },
#   {
#     ticker: 'BBDC4',
#     tipo_id: 3
#   },
#   {
#     ticker: 'CMIG4',
#     tipo_id: 3
#   },
#   {
#     ticker: 'SANB11',
#     tipo_id: 3
#   },
#   {
#     ticker: 'VIVT4',
#     tipo_id: 3
#   },
#   {
#     ticker: 'EQTL3',
#     tipo_id: 3
#   },
#   {
#     ticker: 'SBSP3',
#     tipo_id: 3
#   },
#   {
#     ticker: 'TRPL4',
#     tipo_id: 3
#   },
#   {
#     ticker: 'BBAS3',
#     tipo_id: 3
#   },
#   {
#     ticker: 'BBSE3',
#     tipo_id: 3
#   },
#   {
#     ticker: 'VVPR11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'KNRI11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'HCRI11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'GGRC11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'HGLG11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'ALZR11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'BTLG11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'FIIB11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'HLOG11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'XPIN11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'XPLG11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'VILG11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'IRDM11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'KNIP11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'MXRF11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'OUCY11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'RECR11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'TGAR11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'TORD11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'VRTA11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'HFOF11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'HGFF11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'MGFF11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'BCFF11',
#     tipo_id: 4
#   },
#   {
#     ticker: 'HGRU11',
#     tipo_id: 4
#   }
# ])

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

# Estado.create(status: 'Aberta')
# Estado.create(status: 'Exercicio')
# Estado.create(status: 'Po')
# Estado.create(status: 'Recompra')

# Vencimento.create(data: DateTime.strptime('21/09/2020', '%d/%m/%Y'))
# Vencimento.create(data: DateTime.strptime('19/10/2020', '%d/%m/%Y'))

# Derivativo.create(codigo: 'BBASI355', strike: 35.16,  tipo: 'Call', vencimento_id: 1 , ativo_id: 1)
# Derivativo.create(codigo: 'BBASI455', strike: 34.16,  tipo: 'Call', vencimento_id: 1 , ativo_id: 1 )
# Derivativo.create(codigo: 'BBASU322', strike: 31.91,  tipo: 'Put', vencimento_id: 1 , ativo_id: 1 )
# Derivativo.create(codigo: 'VIVTU480', strike: 47.53,  tipo: 'Put', vencimento_id: 1 , ativo_id: 10 )
# Derivativo.create(codigo: 'BBDCJ210', strike: 21.65,  tipo: 'Call', vencimento_id: 2 , ativo_id: 8 )
# Derivativo.create(codigo: 'ITUBJ249', strike: 24.86,  tipo: 'Call', vencimento_id: 2 , ativo_id: 6 )

# Corretora.create(nome: 'Clear', corretagem_fiis: 0.0, corretagem_acoes: 0.0, corretagem_opcoes: 0.0, corretagem_exerc: 0.0, corretagem_exerc_porcent:0.005, corretagem_exerc_iss:0.1)
# Corretora.create(nome: 'Modal', corretagem_fiis: 1.49, corretagem_acoes: 1.49, corretagem_opcoes: 1.49, corretagem_exerc: 1.49, corretagem_exerc_porcent:0.0, corretagem_exerc_iss:0.0)
# Corretora.create(nome: 'Capital', corretagem_fiis: 1.99, corretagem_acoes: 1.99, corretagem_opcoes: 1.99, corretagem_exerc: 1.99, corretagem_exerc_porcent:0.0, corretagem_exerc_iss:0.0)
# Corretora.create(nome: 'XP', corretagem_fiis: 0.0, corretagem_acoes: 0.0, corretagem_opcoes: 0.0, corretagem_exerc: 0.0, corretagem_exerc_porcent:0.005, corretagem_exerc_iss:0.1)

# DerivaMove.create(carteira_id: 1, derivativo_id: 1,  estado_id: 3,  valor: 0.23, data: DateTime.strptime('02/09/2020', '%d/%m/%Y'), quantidade:200,  movimento: 'Venda',  corretora_id: 1, investimento_id: 1)
DerivaMove.create(carteira_id: 1, derivativo_id: 2,  estado_id: 3,  valor: 0.60, data: DateTime.strptime('02/09/2020', '%d/%m/%Y'), quantidade:200,  movimento: 'Venda',  corretora_id: 1, investimento_id: 1)
DerivaMove.create(carteira_id: 1, derivativo_id: 3,  estado_id: 2, investimento_id: 1,  valor: 0.38, data: DateTime.strptime('09/09/2020', '%d/%m/%Y'), quantidade:100,  movimento: 'Venda',  corretora_id: 1)
DerivaMove.create(carteira_id: 1, derivativo_id: 4,  estado_id: 2, investimento_id: 2,  valor: 0.40, data: DateTime.strptime('09/09/2020', '%d/%m/%Y'), quantidade:100,  movimento: 'Venda',  corretora_id: 1)
DerivaMove.create(carteira_id: 1, derivativo_id: 5,  estado_id: 4,  valor: 0.40, data: DateTime.strptime('22/09/2020', '%d/%m/%Y'), quantidade:100,  movimento: 'Venda',  corretora_id: 1, valor_recompra: 0.04, data_recompra: DateTime.strptime('10/10/2020', '%d/%m/%Y') )
DerivaMove.create(carteira_id: 1, derivativo_id: 5,  estado_id: 1,  valor: 0.28, data: DateTime.strptime('22/09/2020', '%d/%m/%Y'), quantidade:300,  movimento: 'Venda',  corretora_id: 1, investimento_id: 1)