class ChangeFieldsFromDerivativos < ActiveRecord::Migration[5.2]
  def change
    remove_column :derivativos, :tipo
    add_reference :derivativos, :deriva_tipo, foreign_key: true
  end
end
