class Investimento < ApplicationRecord
  belongs_to :carteira
  has_many :investimentos, :dependent => :destroy
end
