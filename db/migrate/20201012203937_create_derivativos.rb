class CreateDerivativos < ActiveRecord::Migration[5.2]
  def change
    create_table :derivativos do |t|
      
      t.references :ativo, foreign_key: true
      t.references :vencimento, foreign_key: true
      t.references :deriva_tipo, foreign_key: true
      
      t.decimal :strike
      
      t.string :codigo


      t.timestamps
    end
  end
end
