# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.new
user.email = 'admin@portaisdobem.org'
user.password = '123456'
user.password_confirmation = '123456'
user.save!

Tipo.create(nome: 'Ações')
Tipo.create(nome: 'Fundos Imobiliários')
Tipo.create(nome: 'Opções')

Ativo.create(ticker: 'BBSA3', tipo_id: 1)
Ativo.create(ticker: 'BBSE3', tipo_id: 1)
Ativo.create(ticker: 'EGIE3', tipo_id: 1)
Ativo.create(ticker: 'TAEE11', tipo_id: 1)
Ativo.create(ticker: 'ITSA4', tipo_id: 1)
Ativo.create(ticker: 'ITUB4', tipo_id: 1)
Ativo.create(ticker: 'BBDC4', tipo_id: 1)
Ativo.create(ticker: 'CMIG4', tipo_id: 1)
Ativo.create(ticker: 'SANB11', tipo_id: 1)
Ativo.create(ticker: 'VIVT4', tipo_id: 1)
Ativo.create(ticker: 'EQTL3', tipo_id: 1)
Ativo.create(ticker: 'SBSP3', tipo_id: 1)
Ativo.create(ticker: 'TRPL4', tipo_id: 1)

Ativo.create(ticker: 'HGRU11', tipo_id: 2)
Ativo.create(ticker: 'TXRF11', tipo_id: 2)
Ativo.create(ticker: 'VVPR11', tipo_id: 2)
Ativo.create(ticker: 'KNRI11', tipo_id: 2)

Ativo.create(ticker: 'HCRI11', tipo_id: 2)

Ativo.create(ticker: 'GGRC11', tipo_id: 2)
Ativo.create(ticker: 'HGLG11', tipo_id: 2)
Ativo.create(ticker: 'ALZR11', tipo_id: 2)
Ativo.create(ticker: 'BTLG11', tipo_id: 2)
Ativo.create(ticker: 'FIIB11', tipo_id: 2)
Ativo.create(ticker: 'HLOG11', tipo_id: 2)
Ativo.create(ticker: 'XPIN11', tipo_id: 2)
Ativo.create(ticker: 'XPLG11', tipo_id: 2)
Ativo.create(ticker: 'VILG11', tipo_id: 2)

Ativo.create(ticker: 'IRDM11', tipo_id: 2)
Ativo.create(ticker: 'KNIP11', tipo_id: 2)
Ativo.create(ticker: 'MXRF11', tipo_id: 2)
Ativo.create(ticker: 'OUCY11', tipo_id: 2)
Ativo.create(ticker: 'RECR11', tipo_id: 2)
Ativo.create(ticker: 'TGAR11', tipo_id: 2)
Ativo.create(ticker: 'TORD11', tipo_id: 2)
Ativo.create(ticker: 'VRTA11', tipo_id: 2)

Ativo.create(ticker: 'HFOF11', tipo_id: 2)
Ativo.create(ticker: 'HGFF11', tipo_id: 2)
Ativo.create(ticker: 'MGFF11', tipo_id: 2)
Ativo.create(ticker: 'BCFF11', tipo_id: 2)

Carteira.create(ticker: 'Warren Buffet', user_id: 1)
Carteira.create(ticker: 'Ray Dalio', user_id: 1)

Investimento.create(carteira_id: 1, ativo_id: 1, quantidade: 200)
Investimento.create(carteira_id: 1, ativo_id: 3, quantidade: 100)
Investimento.create(carteira_id: 1, ativo_id: 5, quantidade: 400)
Investimento.create(carteira_id: 1, ativo_id: 25, quantidade: 50)
Investimento.create(carteira_id: 1, ativo_id: 28, quantidade: 50)

Investimento.create(carteira_id: 2, ativo_id: 2, quantidade: 300)
Investimento.create(carteira_id: 2, ativo_id: 4, quantidade: 100)
Investimento.create(carteira_id: 2, ativo_id: 6, quantidade: 400)
Investimento.create(carteira_id: 2, ativo_id: 32, quantidade: 50)
Investimento.create(carteira_id: 2, ativo_id: 34, quantidade: 50)


Atividade.create(codigo: 'BBASI345', data_negociada: DateTime.new(2020, 09, 01), quantidade: 200, valor: 0.60, carteira_id: 1, movimento: "Venda", ativo_id: 1, tipo_id: 1, investimento_id: 1 )


