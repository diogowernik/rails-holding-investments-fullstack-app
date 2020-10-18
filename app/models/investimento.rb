class Investimento < ApplicationRecord
  belongs_to :carteira
  belongs_to :ativo

  scope :por_carteira, ( -> (carteira) { where carteira_id: carteira } )
  scope :por_ativo, ( -> (ativo) { where ativo_id: ativo } )
end

