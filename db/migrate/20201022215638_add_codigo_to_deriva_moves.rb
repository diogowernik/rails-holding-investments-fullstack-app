class AddCodigoToDerivaMoves < ActiveRecord::Migration[5.2]
  def change
    add_column :deriva_moves, :codigo, :string
  end
end
