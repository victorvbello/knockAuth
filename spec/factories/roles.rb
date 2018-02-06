FactoryBot.define do
  factory :role do
    name {FFaker::Name.first_name}
  end
end