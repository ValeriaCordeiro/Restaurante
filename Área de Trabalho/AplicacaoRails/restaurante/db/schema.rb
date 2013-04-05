# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130405215804) do

  create_table "cardapios", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.float    "preco"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "itempedidos", :force => true do |t|
    t.integer  "quantidade"
    t.integer  "pedido_id"
    t.integer  "cardapio_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "itempedidos", ["cardapio_id"], :name => "index_itempedidos_on_cardapio_id"
  add_index "itempedidos", ["pedido_id"], :name => "index_itempedidos_on_pedido_id"

  create_table "motoboys", :force => true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pedidos", :force => true do |t|
    t.string   "data"
    t.string   "hora"
    t.float    "valor"
    t.integer  "cliente_id"
    t.integer  "motoboy_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "pedidos", ["cliente_id"], :name => "index_pedidos_on_cliente_id"
  add_index "pedidos", ["motoboy_id"], :name => "index_pedidos_on_motoboy_id"

end
