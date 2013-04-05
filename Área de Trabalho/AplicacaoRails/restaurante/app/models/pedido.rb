class Pedido < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :motoboy
  attr_accessible :data, :hora, :valor, :cliente_id, :motoboy_id
end


