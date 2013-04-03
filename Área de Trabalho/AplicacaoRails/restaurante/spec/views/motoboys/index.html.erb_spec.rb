require 'spec_helper'

describe "motoboys/index" do
  before(:each) do
    assign(:motoboys, [
      stub_model(Motoboy,
        :nome => "Nome",
        :telefone => "Telefone"
      ),
      stub_model(Motoboy,
        :nome => "Nome",
        :telefone => "Telefone"
      )
    ])
  end

  it "renders a list of motoboys" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
  end
end
