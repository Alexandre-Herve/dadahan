FactoryGirl.define do
  factory :project do
    date Date.today
    is_ancient false
    is_modern true
    address '35 rue de la boustifaille'
    description 'kikoo lol'
    program 'ouais grave'
    amount_in_euro 35.14
    surface_in_squared_meters 28
    customer_id nil
  end
end

