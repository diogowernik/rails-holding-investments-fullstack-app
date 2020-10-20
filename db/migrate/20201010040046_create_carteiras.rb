class CreateCarteiras < ActiveRecord::Migration[5.2]
  def change
    create_table :carteiras do |t|
      
      t.references :user, foreign_key: true
      
      t.string :nome
      

      t.timestamps
    end
  end
end
