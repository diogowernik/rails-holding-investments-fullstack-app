class Corretora < ApplicationRecord
    has_many :deriva_moves, :dependent => :destroy
    has_many :investimentos, :dependent => :destroy
end
