class CreateItempedidos < ActiveRecord::Migration
  def change
    create_table :itempedidos do |t|
      t.integer :quantidade
      t.references :pedido
      t.references :cardapio

      t.timestamps
    end
    add_index :itempedidos, :pedido_id
    add_index :itempedidos, :cardapio_id
  end
end
