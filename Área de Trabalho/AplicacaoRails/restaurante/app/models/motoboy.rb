class Motoboy < ActiveRecord::Base
  
  has_many :pedidos

  attr_accessible :nome, :telefone

end
