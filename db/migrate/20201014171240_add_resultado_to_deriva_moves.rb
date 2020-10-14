class AddResultadoToDerivaMoves < ActiveRecord::Migration[5.2]
  def change
    add_column :deriva_moves, :resultado, :integer
  end
end
