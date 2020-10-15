class AddVencimentoReferencesToDerivativos < ActiveRecord::Migration[5.2]
  def change
    add_reference :derivativos, :vencimento, foreign_key: true
  end
end
