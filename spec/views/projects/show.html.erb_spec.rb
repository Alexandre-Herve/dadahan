require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :is_ancient => false,
      :is_modern => false,
      :address => "Address",
      :description => "MyText",
      :program => "MyText",
      :amount_in_euro => 1.5,
      :surface_in_squared_meters => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Address/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
