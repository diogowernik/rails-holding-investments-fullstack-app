class AddFieldToAtivos < ActiveRecord::Migration[5.2]
  def change
    add_column :ativos, :valor_atual, :decimal
  end
end
