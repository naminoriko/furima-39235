class OrdersController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
    
    if user_signed_in? == false
      redirect_to new_user_session_path
    elsif @item.user == current_user
      redirect_to root_path
    elsif @item.order.present? == false  
      @order_address = OrderAddress.new
    else
      redirect_to root_path
    end

  end

  def create
    @item = Item.find(params[:item_id])
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
      pay_item
      @order_address.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def order_params
    params.require(:order_address)
    .permit(:post_code, :sender_area_id, :city, :banchi, :building, :phone_number)
    .merge(item_id: params[:item_id], user_id: current_user.id, token: params[:token])
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp.api_key = "sk_test_ca564ef7952fd423c736d63c"
    Payjp::Charge.create(
      amount: @item.price,
      card: order_params[:token],
      currency: 'jpy'
    )
  end

end