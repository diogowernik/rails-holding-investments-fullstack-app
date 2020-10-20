class Ativo < ApplicationRecord
  belongs_to :tipo
  has_many :deriva_moves, :dependent => :destroy
  
  scope :por_tipo, ( -> (tipo) { where tipo_id: tipo } )
end
