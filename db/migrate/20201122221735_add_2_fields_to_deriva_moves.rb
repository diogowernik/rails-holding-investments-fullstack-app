class Add2FieldsToDerivaMoves < ActiveRecord::Migration[5.2]
  def change
    add_column :deriva_moves, :valor_hoje, :decimal
    add_column :deriva_moves, :valor_ativo_lancamento, :decimal
  end
end
