class Investimento < ApplicationRecord
  belongs_to :carteira
  belongs_to :ativo
  belongs_to :corretora
  belongs_to :tipo
  
  has_many :deriva_moves, :dependent => :destroy

  scope :por_carteira, ( -> (carteira) { where carteira_id: carteira } )
  scope :por_ativo, ( -> (ativo) { where ativo_id: ativo } )
  scope :por_corretora, ( -> (corretora) { where corretora_id: corretora } )
  scope :por_tipo, ( -> (tipo) { where tipo_id: tipo } )
  
  def custom_invest
    "#{carteira.nome} / #{corretora.nome} / #{ativo.ticker}"
  end
end

