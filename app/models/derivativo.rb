class Derivativo < ApplicationRecord
  belongs_to :ativo
  belongs_to :vencimento
  
  scope :por_ativo, ( -> (ativo) { where ativo_id: ativo } )
  scope :por_vencimento, ( -> (vencimento) { where vencimento_id: vencimento } )
  scope :por_tipo, ( -> (tipo) { where tipo: tipo } )
  
end
