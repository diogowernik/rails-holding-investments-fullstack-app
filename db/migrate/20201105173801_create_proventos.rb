class CreateProventos < ActiveRecord::Migration[5.2]
  def change
    create_table :proventos do |t|
      t.references :carteira, foreign_key: true
      t.references :ano, foreign_key: true
      t.decimal :jan, :default => 0.00
      t.decimal :fev, :default => 0.00
      t.decimal :mar, :default => 0.00
      t.decimal :abr, :default => 0.00
      t.decimal :mai, :default => 0.00
      t.decimal :jun, :default => 0.00
      t.decimal :jul, :default => 0.00
      t.decimal :ago, :default => 0.00
      t.decimal :set, :default => 0.00
      t.decimal :out, :default => 0.00
      t.decimal :nov, :default => 0.00
      t.decimal :dez, :default => 0.00

      t.timestamps
    end
  end
end
