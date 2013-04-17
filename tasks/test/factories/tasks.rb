# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    project
    sequence(:name) { |n| "Task#{n}" }
  end
end
