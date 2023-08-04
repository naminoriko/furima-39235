class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image

  belongs_to :category
  belongs_to :condition
  belongs_to :delivery_payment
  belongs_to :sender_area
  belongs_to :number_of_day

  validates :name, :content, :price, :image, presence: true
  validates :category_id, :condition_id, :delivery_payment_id,
            :sender_area_id, :number_of_day_id,
            numericality: { other_than: 1, message: "can't be blank" }
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }

  belongs_to :user
  has_one    :order
end
