class CreateInvestimentos < ActiveRecord::Migration[5.2]
  def change
    create_table :investimentos do |t|
      t.references :carteira, foreign_key: true
      t.integer :quantidade
      t.string :ticker

      t.timestamps
    end
  end
end
