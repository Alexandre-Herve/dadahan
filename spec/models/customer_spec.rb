require 'spec_helper'

describe Customer do
  before(:each) do
    Customer.delete_all
  end

  describe "set_type!" do 

    it "should set a type" do 
      cu = FactoryGirl.create(:customer)
      cu.is_public.should be_false
      cu.is_individual.should be_true

      cu.set_type!(:is_public)

      cu.is_public.should be_true
      cu.is_individual.should be_false
    end

  end

end

