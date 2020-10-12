class Carteira < ApplicationRecord
  belongs_to :user
  has_many :investimentos, :dependent => :destroy
  has_many :atividades, :dependent => :destroy
end
