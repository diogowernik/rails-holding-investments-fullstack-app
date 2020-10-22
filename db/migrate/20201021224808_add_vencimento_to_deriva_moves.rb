class AddVencimentoToDerivaMoves < ActiveRecord::Migration[5.2]
  def change
    add_reference :deriva_moves, :vencimento, foreign_key: true
  end
end
