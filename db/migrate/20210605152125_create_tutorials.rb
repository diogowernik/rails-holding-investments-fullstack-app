class CreateTutorials < ActiveRecord::Migration[5.2]
  def change
    create_table :tutorials do |t|
      t.string :title
      t.boolean :published
      t.boolean :submitted
      t.string :description

      t.timestamps
    end
  end
end
