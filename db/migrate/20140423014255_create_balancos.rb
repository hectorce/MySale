class CreateBalancos < ActiveRecord::Migration
  def change
	drop_table :balancos
    create_table :balancos do |t|
      t.date :DataEntrada
      t.date :DataSaida
      t.integer :Codigo
      t.string :Produto
      t.float :ValorEntrada
      t.float :ValorSaida
      t.string :Cliente
      t.string :Observacao
      t.integer :troca

      t.timestamps
    end
  end
end
