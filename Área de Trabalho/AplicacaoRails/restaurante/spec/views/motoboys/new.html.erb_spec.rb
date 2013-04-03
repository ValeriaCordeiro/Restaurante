require 'spec_helper'

describe "motoboys/new" do
  before(:each) do
    assign(:motoboy, stub_model(Motoboy,
      :nome => "MyString",
      :telefone => "MyString"
    ).as_new_record)
  end

  it "renders new motoboy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => motoboys_path, :method => "post" do
      assert_select "input#motoboy_nome", :name => "motoboy[nome]"
      assert_select "input#motoboy_telefone", :name => "motoboy[telefone]"
    end
  end
end
