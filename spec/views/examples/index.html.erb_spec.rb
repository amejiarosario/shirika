require 'spec_helper'

describe "examples/index" do
  before(:each) do
    assign(:examples, [
      stub_model(Example),
      stub_model(Example)
    ])
  end

  it "renders a list of examples" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
