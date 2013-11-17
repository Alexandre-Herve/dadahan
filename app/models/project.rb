class Project < ActiveRecord::Base
  attr_accessor :customer_id
  belongs_to :customer
end
