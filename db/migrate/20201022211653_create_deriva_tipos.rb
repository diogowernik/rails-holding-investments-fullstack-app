class CreateDerivaTipos < ActiveRecord::Migration[5.2]
  def change
    create_table :deriva_tipos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
