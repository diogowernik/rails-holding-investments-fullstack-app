class Atividade < ApplicationRecord
  belongs_to :carteira
  belongs_to :ativo
#  belongs_to :investimentos
end
