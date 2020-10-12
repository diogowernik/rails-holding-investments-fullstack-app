class CreateDerivativos < ActiveRecord::Migration[5.2]
  def change
    create_table :derivativos do |t|
      t.string :codigo
      t.decimal :strike
      t.string :tipo
      t.date :vencimento
      t.references :ativo, foreign_key: true

      t.timestamps
    end
  end
end
