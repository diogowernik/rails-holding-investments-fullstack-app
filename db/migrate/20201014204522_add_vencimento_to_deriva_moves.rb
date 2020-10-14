class AddVencimentoToDerivaMoves < ActiveRecord::Migration[5.2]
  def change
    add_column :deriva_moves, :vencimento, :vencimento_id
  end
end
