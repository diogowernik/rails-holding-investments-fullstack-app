class CreateAtividades < ActiveRecord::Migration[5.2]
  def change
    create_table :atividades do |t|
      t.string :codigo
      t.references :carteira, foreign_key: true
      t.decimal :valor
      t.date :data_negociada
      t.integer :quantidade
      t.string :movimento
      t.references :tipo, foreign_key: true
      t.references :ativo, foreign_key: true

      t.timestamps
    end
  end
end
