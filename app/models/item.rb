class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :delivery_payment
  belongs_to :sender_area
  belongs_to :number_of_day
end
