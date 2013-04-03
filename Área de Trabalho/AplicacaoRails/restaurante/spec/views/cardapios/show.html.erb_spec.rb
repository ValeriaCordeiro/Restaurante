require 'spec_helper'

describe "cardapios/show" do
  before(:each) do
    @cardapio = assign(:cardapio, stub_model(Cardapio,
      :nome => "Nome",
      :descricao => "Descricao",
      :preco => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Descricao/)
    rendered.should match(/1.5/)
  end
end
