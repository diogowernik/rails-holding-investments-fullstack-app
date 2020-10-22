class AddFieldToDerivaMoves < ActiveRecord::Migration[5.2]
  def change
    add_column :deriva_moves, :strike_total, :decimal
  end
end
