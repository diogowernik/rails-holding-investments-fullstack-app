class Atividade < ApplicationRecord
  belongs_to :carteira
  belongs_to :ativo
  belongs_to :tipo
  belongs_to :investimentos
end
