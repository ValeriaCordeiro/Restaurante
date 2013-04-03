require 'spec_helper'

describe "cardapios/index" do
  before(:each) do
    assign(:cardapios, [
      stub_model(Cardapio,
        :nome => "Nome",
        :descricao => "Descricao",
        :preco => 1.5
      ),
      stub_model(Cardapio,
        :nome => "Nome",
        :descricao => "Descricao",
        :preco => 1.5
      )
    ])
  end

  it "renders a list of cardapios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
