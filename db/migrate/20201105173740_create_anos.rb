class CreateAnos < ActiveRecord::Migration[5.2]
  def change
    create_table :anos do |t|
      t.integer :ano

      t.timestamps
    end
  end
end
