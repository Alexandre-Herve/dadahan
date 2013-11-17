class Project < ActiveRecord::Base
  attr_accessor :customer_id
  belongs_to :customer
  def type
  end
  def type_to_set
  end
end
