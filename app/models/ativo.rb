class Ativo < ApplicationRecord
  belongs_to :tipo
  has_many :deriva_moves
  has_many :ativo_moves
  
  scope :por_tipo, ( -> (tipo) { where tipo_id: tipo } )
end
