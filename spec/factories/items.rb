FactoryBot.define do
  factory :item do
    name                { Faker::Lorem.sentence }
    content             { Faker::Lorem.sentence }
    category_id         { 2 }
    condition_id        { 2 }
    delivery_payment_id { 2 }
    sender_area_id      { 2 }
    number_of_day_id    { 2 }
    price               { Faker::Number.between(from: 300, to: 9_999_999) }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
