class Atividade < ApplicationRecord
  belongs_to :carteira
  belongs_to :investimentos
end
