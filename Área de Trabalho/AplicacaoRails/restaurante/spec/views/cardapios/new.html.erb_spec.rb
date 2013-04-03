require 'spec_helper'

describe "cardapios/new" do
  before(:each) do
    assign(:cardapio, stub_model(Cardapio,
      :nome => "MyString",
      :descricao => "MyString",
      :preco => 1.5
    ).as_new_record)
  end

  it "renders new cardapio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cardapios_path, :method => "post" do
      assert_select "input#cardapio_nome", :name => "cardapio[nome]"
      assert_select "input#cardapio_descricao", :name => "cardapio[descricao]"
      assert_select "input#cardapio_preco", :name => "cardapio[preco]"
    end
  end
end
