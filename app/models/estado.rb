class Estado < ApplicationRecord
    has_many :deriva_moves, :dependent => :destroy
end
