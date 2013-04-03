require 'spec_helper'

describe "cardapios/edit" do
  before(:each) do
    @cardapio = assign(:cardapio, stub_model(Cardapio,
      :nome => "MyString",
      :descricao => "MyString",
      :preco => 1.5
    ))
  end

  it "renders the edit cardapio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cardapios_path(@cardapio), :method => "post" do
      assert_select "input#cardapio_nome", :name => "cardapio[nome]"
      assert_select "input#cardapio_descricao", :name => "cardapio[descricao]"
      assert_select "input#cardapio_preco", :name => "cardapio[preco]"
    end
  end
end
