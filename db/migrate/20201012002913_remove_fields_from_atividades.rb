class RemoveFieldsFromAtividades < ActiveRecord::Migration[5.2]
  def change
    remove_column :atividades, :tipo_id, :references
    remove_column :atividades, :codigo, :string
  end
end
