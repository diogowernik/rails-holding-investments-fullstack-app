class CreateCorretoras < ActiveRecord::Migration[5.2]
  def change
    create_table :corretoras do |t|
      t.string :nome
      t.decimal :corretagem
      t.decimal :corretagem_porcentagem
      t.decimal :corretagem_iss

      t.timestamps
    end
  end
end
