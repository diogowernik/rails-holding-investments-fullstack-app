class Ativo < ApplicationRecord
  belongs_to :tipo
  has_many :deriva_moves, :dependent => :destroy
end
