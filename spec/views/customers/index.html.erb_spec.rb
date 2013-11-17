require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :is_private => false,
        :is_public => false,
        :is_individual => false,
        :name => "Name"
      ),
      stub_model(Customer,
        :is_private => false,
        :is_public => false,
        :is_individual => false,
        :name => "Name"
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
