require 'spec_helper'

describe "itempedidos/show" do
  before(:each) do
    @itempedido = assign(:itempedido, stub_model(Itempedido,
      :quantidade => 1,
      :pedido => nil,
      :cardapio => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
