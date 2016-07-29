FactoryGirl.define do
  sequence(:email) { |n| "test#{n}@test.com"}

  factory :user do
    email
    password "test55"
    first_name "Sue"
    last_name "Smith"
    admin false
  end

  factory :admin, class: User do
    email
    password "test55"
    first_name "Sam"
    last_name "Smith"
    admin true
  end

end