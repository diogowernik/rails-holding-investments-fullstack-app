class Atividade < ApplicationRecord
  belongs_to :carteira
  belongs_to :tipo
  belongs_to :ativo
end
