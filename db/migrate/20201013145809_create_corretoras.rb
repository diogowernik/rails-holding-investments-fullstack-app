class CreateCorretoras < ActiveRecord::Migration[5.2]
  def change
    create_table :corretoras do |t|
      t.string :nome
      t.decimal :corretagem_fiis
      t.decimal :corretagem_acoes
      t.decimal :corretagem_opcoes
      t.decimal :corretagem_exerc
      t.decimal :corretagem_exerc_porcent
      t.decimal :corretagem_exerc_iss

      t.timestamps
    end
  end
end
