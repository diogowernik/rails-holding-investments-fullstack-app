class AtivoMove < ApplicationRecord
  belongs_to :carteira
  belongs_to :tipo
  belongs_to :ativo
  belongs_to :investimento
  belongs_to :corretora
  
  scope :por_carteira, ( -> (carteira) { where carteira_id: carteira } )
  scope :por_ativo, ( -> (ativo) { where ativo_id: ativo } )
  scope :por_corretora, ( -> (corretora) { where corretora_id: corretora } )
  scope :por_tipo, ( -> (tipo) { where tipo_id: tipo } )
  scope :por_investimento, ( -> (investimento) { where investimento_id: investimento } )
end
