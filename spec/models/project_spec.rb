require 'spec_helper'

describe Project do
  it "should have one customer when provided" do 
    cu = FactoryGirl.create(:customer)
    pr = FactoryGirl.create(:project)

    pr.customer.should be_nil

    pr.customer = cu
    pr.save!

    pr.reload.customer.should == cu
  end
end
