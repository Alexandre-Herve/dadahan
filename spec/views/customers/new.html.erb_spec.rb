require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :is_private => false,
      :is_public => false,
      :is_individual => false,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customers_path, "post" do
      assert_select "input#customer_is_private[name=?]", "customer[is_private]"
      assert_select "input#customer_is_public[name=?]", "customer[is_public]"
      assert_select "input#customer_is_individual[name=?]", "customer[is_individual]"
      assert_select "input#customer_name[name=?]", "customer[name]"
    end
  end
end
