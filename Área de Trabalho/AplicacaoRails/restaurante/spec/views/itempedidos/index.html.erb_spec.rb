require 'spec_helper'

describe "itempedidos/index" do
  before(:each) do
    assign(:itempedidos, [
      stub_model(Itempedido,
        :quantidade => 1,
        :pedido => nil,
        :cardapio => nil
      ),
      stub_model(Itempedido,
        :quantidade => 1,
        :pedido => nil,
        :cardapio => nil
      )
    ])
  end

  it "renders a list of itempedidos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
