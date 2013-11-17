require 'spec_helper'

describe "customers/edit" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :is_private => false,
      :is_public => false,
      :is_individual => false,
      :name => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do
      assert_select "input#customer_is_private[name=?]", "customer[is_private]"
      assert_select "input#customer_is_public[name=?]", "customer[is_public]"
      assert_select "input#customer_is_individual[name=?]", "customer[is_individual]"
      assert_select "input#customer_name[name=?]", "customer[name]"
    end
  end
end
