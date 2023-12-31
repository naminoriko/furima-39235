class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :item_set, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    if @item.order.present? == false && @item.user == current_user
      render 'edit'
    else
      redirect_to root_path
    end
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def destroy
    if @item.user == current_user
      @item.destroy
      redirect_to root_path
    else
      redirect_to root_path, alert: 'You do not have permission to delete this item.'
    end
  end

  private

  def item_params
    params.require(:item).permit(
      :image, :name, :content, :category_id, :condition_id, :delivery_payment_id,
      :sender_area_id, :number_of_day_id, :price
    ).merge(user_id: current_user.id)
  end

  def item_set
    @item = Item.find(params[:id])
  end
end
