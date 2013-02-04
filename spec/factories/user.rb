FactoryGirl.define do
  factory :user do
    sequence(:name){|n| "name_#{n}"}
  end
end