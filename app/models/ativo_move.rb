class AtivoMove < ApplicationRecord
  belongs_to :carteira
  belongs_to :tipo
  belongs_to :ativo
  belongs_to :investimento
  belongs_to :corretora
end
