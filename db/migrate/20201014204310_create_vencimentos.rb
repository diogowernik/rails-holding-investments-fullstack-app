class CreateVencimentos < ActiveRecord::Migration[5.2]
  def change
    create_table :vencimentos do |t|
      t.date :data

      t.timestamps
    end
  end
end
