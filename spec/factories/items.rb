FactoryBot.define do
  factory :item do
    image               {Faker::Lorem.sentence}
    name                {Faker::Name}
    content             {Faker::Lorem.sentence}
    category_id         { '1' }
    condition_id        { '1' }
    delivery_payment_id { '1' }
    sender_area_id      { '1' }
    number_of_day_id    { '1' }
    price               {Faker::Number.between(from: 300, to: 9999999)}
    association :user 
  end
end

