FactoryBot.define do
  factory :order_address do
    post_code      {'123-4567'}
    sender_area_id { 3 }
    city           {'千葉市'}
    banchi         {'1-1'}
    building       {'アパート山田'}
    phone_number   {'09011112222'}
  end
end
