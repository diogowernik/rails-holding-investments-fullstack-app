class CreateDerivaMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :deriva_moves do |t|
      t.references :carteira, foreign_key: true
      t.references :derivativo, foreign_key: true
      t.references :estado, foreign_key: true
      t.references :corretora, foreign_key: true
      t.decimal :valor
      t.date :data
      t.integer :quantidade
      t.integer :investimento_id
      t.string :movimento

      t.timestamps
    end
  end
end
