class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :data
      t.string :hora
      t.float :valor
      t.references :cliente
      t.references :motoboy

      t.timestamps
    end
    add_index :pedidos, :cliente_id
    add_index :pedidos, :motoboy_id
  end
end
