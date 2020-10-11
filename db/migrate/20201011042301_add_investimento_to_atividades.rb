class AddInvestimentoToAtividades < ActiveRecord::Migration[5.2]
  def change
    add_column :atividades, :investimento_id, :integer
  end
end
