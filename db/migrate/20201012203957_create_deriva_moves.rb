class CreateDerivaMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :deriva_moves do |t|
      t.references :carteira, foreign_key: true
      t.references :derivativo, foreign_key: true
      t.references :estado, foreign_key: true
      t.references :corretora, foreign_key: true
      t.decimal :valor
      t.decimal :valor_recompra
      t.date :data
      t.date :data_recompra
      t.integer :quantidade
      t.integer :investimento_id
      t.string :movimento
      t.integer :resultado

      t.timestamps
    end
  end
end
