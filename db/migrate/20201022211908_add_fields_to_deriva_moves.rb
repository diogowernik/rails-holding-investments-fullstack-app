class AddFieldsToDerivaMoves < ActiveRecord::Migration[5.2]
  def change
    add_reference :deriva_moves, :ativo, foreign_key: true
    add_reference :deriva_moves, :deriva_tipo, foreign_key: true
    add_column :deriva_moves, :strike, :decimal
  end
end
