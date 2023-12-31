FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { "1a#{Faker::Internet.password(min_length: 6)}" }
    password_confirmation { password }
    last_name             { '鈴木' }
    first_name            { '一郎' }
    last_name_kana        { 'スズキ' }
    first_name_kana       { 'イチロウ' }
    birthday              { '1980-01-01' }
  end
end
