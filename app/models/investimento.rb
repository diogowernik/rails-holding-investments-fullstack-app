class Investimento < ApplicationRecord
  belongs_to :carteira
  belongs_to :ativo
end
