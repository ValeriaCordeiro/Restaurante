require 'spec_helper'

describe "motoboys/edit" do
  before(:each) do
    @motoboy = assign(:motoboy, stub_model(Motoboy,
      :nome => "MyString",
      :telefone => "MyString"
    ))
  end

  it "renders the edit motoboy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => motoboys_path(@motoboy), :method => "post" do
      assert_select "input#motoboy_nome", :name => "motoboy[nome]"
      assert_select "input#motoboy_telefone", :name => "motoboy[telefone]"
    end
  end
end
