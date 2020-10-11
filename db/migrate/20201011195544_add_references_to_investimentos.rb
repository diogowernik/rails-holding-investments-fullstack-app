class AddReferencesToInvestimentos < ActiveRecord::Migration[5.2]
  def change
    remove_column :investimentos, :ativo_id
    add_reference :investimentos, :ativo, foreign_key: true
  end
end
