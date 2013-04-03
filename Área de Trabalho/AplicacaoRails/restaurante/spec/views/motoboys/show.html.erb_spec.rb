require 'spec_helper'

describe "motoboys/show" do
  before(:each) do
    @motoboy = assign(:motoboy, stub_model(Motoboy,
      :nome => "Nome",
      :telefone => "Telefone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Telefone/)
  end
end
