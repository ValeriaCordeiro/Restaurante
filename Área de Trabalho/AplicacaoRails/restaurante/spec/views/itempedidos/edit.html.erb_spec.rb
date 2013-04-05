require 'spec_helper'

describe "itempedidos/edit" do
  before(:each) do
    @itempedido = assign(:itempedido, stub_model(Itempedido,
      :quantidade => 1,
      :pedido => nil,
      :cardapio => nil
    ))
  end

  it "renders the edit itempedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => itempedidos_path(@itempedido), :method => "post" do
      assert_select "input#itempedido_quantidade", :name => "itempedido[quantidade]"
      assert_select "input#itempedido_pedido", :name => "itempedido[pedido]"
      assert_select "input#itempedido_cardapio", :name => "itempedido[cardapio]"
    end
  end
end
