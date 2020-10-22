class Carteira < ApplicationRecord
  belongs_to :user
  
  
  has_many :investimentos, :dependent => :destroy
  has_many :ativo_moves, :dependent => :destroy
  has_many :deriva_moves, :dependent => :destroy
end
