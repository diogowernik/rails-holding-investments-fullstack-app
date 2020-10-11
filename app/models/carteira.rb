class Carteira < ApplicationRecord
  belongs_to :user
  has_many :investimentos, :dependent => :destroy
end
