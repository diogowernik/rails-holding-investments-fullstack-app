class DerivaMove < ApplicationRecord
  belongs_to :carteira
  belongs_to :estado
  belongs_to :investimento
  belongs_to :corretora
  belongs_to :vencimento
  belongs_to :ativo
  belongs_to :deriva_tipo
  
  
  scope :por_carteira, ( -> (carteira) { where carteira_id: carteira } )
  scope :por_corretora, ( -> (corretora) { where corretora_id: corretora } )
  scope :por_estado, ( -> (estado) { where estado_id: estado } )
  scope :por_investimento, ( -> (investimento) { where investimento_id: investimento } )
  scope :por_vencimento, ( -> (vencimento) { where vencimento_id: vencimento } )
  scope :por_ativo, ( -> (ativo) { where ativo_id: ativo } )
  scope :por_deriva_tipo, ( -> (deriva_tipo) { where deriva_tipo_id: deriva_tipo } )
  
end
