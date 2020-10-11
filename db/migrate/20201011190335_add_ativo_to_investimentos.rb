class AddAtivoToInvestimentos < ActiveRecord::Migration[5.2]
  def change
    add_column :investimentos, :ativo_id, :integer
    remove_column :investimentos, :ticker
  end
end
