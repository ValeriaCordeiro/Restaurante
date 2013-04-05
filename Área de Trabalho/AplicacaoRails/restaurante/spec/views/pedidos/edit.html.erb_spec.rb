require 'spec_helper'

describe "pedidos/edit" do
  before(:each) do
    @pedido = assign(:pedido, stub_model(Pedido,
      :data => "MyString",
      :hora => "MyString",
      :valor => 1.5,
      :cliente => nil,
      :motoboy => nil
    ))
  end

  it "renders the edit pedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pedidos_path(@pedido), :method => "post" do
      assert_select "input#pedido_data", :name => "pedido[data]"
      assert_select "input#pedido_hora", :name => "pedido[hora]"
      assert_select "input#pedido_valor", :name => "pedido[valor]"
      assert_select "input#pedido_cliente", :name => "pedido[cliente]"
      assert_select "input#pedido_motoboy", :name => "pedido[motoboy]"
    end
  end
end
