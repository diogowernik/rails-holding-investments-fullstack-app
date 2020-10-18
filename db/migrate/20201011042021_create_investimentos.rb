class CreateInvestimentos < ActiveRecord::Migration[5.2]
  def change
    create_table :investimentos do |t|
      t.integer :quantidade
      t.references :ativo, foreign_key: true
      t.references :carteira, foreign_key: true
      t.references :tipo, foreign_key: true
      t.references :corretora, foreign_key: true
      t.decimal :valor_medio
      
      t.timestamps
    end
  end
end
