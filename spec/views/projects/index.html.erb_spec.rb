require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :is_ancient => false,
        :is_modern => false,
        :address => "Address",
        :description => "MyText",
        :program => "MyText",
        :amount_in_euro => 1.5,
        :surface_in_squared_meters => 1.5
      ),
      stub_model(Project,
        :is_ancient => false,
        :is_modern => false,
        :address => "Address",
        :description => "MyText",
        :program => "MyText",
        :amount_in_euro => 1.5,
        :surface_in_squared_meters => 1.5
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
