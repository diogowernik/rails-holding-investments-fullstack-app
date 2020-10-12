class DerivaMove < ApplicationRecord
  belongs_to :carteira
  belongs_to :derivativo
  belongs_to :estado
end
