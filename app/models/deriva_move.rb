class DerivaMove < ApplicationRecord
  belongs_to :carteira
  belongs_to :derivativo
  belongs_to :estado
  belongs_to :investimento
  belongs_to :corretora
  
  scope :por_carteira, ( -> (carteira) { where carteira_id: carteira } )
  scope :por_derivativo, ( -> (derivativo) { where derivativo_id: derivativo } )
  scope :por_corretora, ( -> (corretora) { where corretora_id: corretora } )
  scope :por_estado, ( -> (estado) { where estado_id: estado } )
  scope :por_investimento, ( -> (investimento) { where investimento_id: investimento } )
  
end
