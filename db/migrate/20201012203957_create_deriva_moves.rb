class CreateDerivaMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :deriva_moves do |t|
      
      t.references :carteira, foreign_key: true
      t.references :estado, foreign_key: true
      t.references :corretora, foreign_key: true
      t.references :investimento, foreign_key: true
      t.references :vencimento, foreign_key: true
      t.references :ativo, foreign_key: true
      t.references :deriva_tipo, foreign_key: true
      
      t.decimal :valor
      t.decimal :strike
      t.decimal :strike_total
      t.decimal :valor_recompra
      t.decimal :resultado
      
      t.date :data
      t.date :data_recompra
      
      t.integer :quantidade
      
      t.string :movimento
      t.string :codigo
      

      t.timestamps
    end
  end
end
