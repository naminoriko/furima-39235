class OrderAddress
  include ActiveModel::Model
  attr_accessor :post_code, :sender_area_id, :city, :banchi, :building, :phone_number, :order_id,
                :user_id, :item_id, :token

  with_options presence: true do
    validates :post_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Include hyphen(-)' }
    validates :city, :banchi, :user_id, :item_id, :token
    validates :phone_number, format: { with: /\A\d{10,11}\z/, message: 'should be a half-width numeric value of 10 to 11 digits' }
  end
  validates :sender_area_id, numericality: { other_than: 1, message: "can't be blank" }

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(post_code: post_code, sender_area_id: sender_area_id, city: city, banchi: banchi, building: building,
                   phone_number: phone_number, order_id: order.id)
  end
end
