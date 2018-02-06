FactoryBot.define do
  factory :user do
    first_name {FFaker::Name.first_name}
    last_name {FFaker::Name.last_name}
    username {FFaker::Internet.user_name}
    password {FFaker::Internet.password}
  end
end