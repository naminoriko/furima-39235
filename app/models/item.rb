class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image
  
  belongs_to :category
  belongs_to :condition
  belongs_to :delivery_payment
  belongs_to :sender_area
  belongs_to :number_of_day

  validates :name, :content, :price, presence: true
  validates :category_id, :condition_id, :delivery_payment_id, 
            :sender_area_id, :number_of_day_id, 
            numericality: { other_than: 1 , message: "can't be blank" } 
end
