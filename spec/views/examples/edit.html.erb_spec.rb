require 'spec_helper'

describe "examples/edit" do
  before(:each) do
    @example = assign(:example, stub_model(Example))
  end

  it "renders the edit example form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => examples_path(@example), :method => "post" do
    end
  end
end
