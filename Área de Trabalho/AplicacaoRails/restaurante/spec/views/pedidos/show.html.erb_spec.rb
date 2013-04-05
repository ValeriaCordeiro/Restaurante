require 'spec_helper'

describe "pedidos/show" do
  before(:each) do
    @pedido = assign(:pedido, stub_model(Pedido,
      :data => "Data",
      :hora => "Hora",
      :valor => 1.5,
      :cliente => nil,
      :motoboy => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data/)
    rendered.should match(/Hora/)
    rendered.should match(/1.5/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
