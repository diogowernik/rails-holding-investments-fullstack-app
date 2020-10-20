class CreateAtivoMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :ativo_moves do |t|
      
      t.references :tipo, foreign_key: true
      t.references :ativo, foreign_key: true
      t.references :investimento, foreign_key: true
      t.references :corretora, foreign_key: true   
      t.references :carteira, foreign_key: true   
      
      t.decimal :valor
      
      t.date :data
      
      t.integer :quantidade
      
      t.string :movimento


      t.timestamps
    end
  end
end
