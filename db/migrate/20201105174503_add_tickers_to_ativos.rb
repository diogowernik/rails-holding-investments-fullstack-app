class AddTickersToAtivos < ActiveRecord::Migration[5.2]
  def change
    add_column :ativos, :ticker_base, :string
    add_column :ativos, :ticker_yf, :string
  end
end
