class CreateAtivos < ActiveRecord::Migration[5.2]
  def change
    create_table :ativos do |t|
      
      t.references :tipo, foreign_key: true
      t.decimal :valor_atual
      t.string :ticker
      t.string :ticker_base
      t.string :ticker_yf
      

      t.timestamps
    end
  end
end
