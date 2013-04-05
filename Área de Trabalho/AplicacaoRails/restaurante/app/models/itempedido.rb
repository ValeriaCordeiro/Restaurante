class Itempedido < ActiveRecord::Base
  belongs_to :pedido
  belongs_to :cardapio
  attr_accessible :quantidade, :pedido_id, :cardapio_id
end
