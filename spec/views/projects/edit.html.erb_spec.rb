require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :is_ancient => false,
      :is_modern => false,
      :address => "MyString",
      :description => "MyText",
      :program => "MyText",
      :amount_in_euro => 1.5,
      :surface_in_squared_meters => 1.5
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_path(@project), "post" do
      assert_select "input#project_is_ancient[name=?]", "project[is_ancient]"
      assert_select "input#project_is_modern[name=?]", "project[is_modern]"
      assert_select "input#project_address[name=?]", "project[address]"
      assert_select "textarea#project_description[name=?]", "project[description]"
      assert_select "textarea#project_program[name=?]", "project[program]"
      assert_select "input#project_amount_in_euro[name=?]", "project[amount_in_euro]"
      assert_select "input#project_surface_in_squared_meters[name=?]", "project[surface_in_squared_meters]"
    end
  end
end
