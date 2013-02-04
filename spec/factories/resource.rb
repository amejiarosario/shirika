FactoryGirl.define do
  factory :resource do
    sequence(:link){|n| "http://adrianmejia.com?q=link_#{n}"}
    sequence(:title){|n| "title_#{n}"}
  end
end
