class OrderAddress
  include ActiveModel::Model
  attr_accessor :post_code, :sender_area_id, :city, :banchi, :building, :phone_number, :order_id,
                :user_id, :item_id
end