class ItemsController < ApplicationController

def index
end

def new
end

private

def item_params
  params.require(:item).permit(
    :image, :name, :content, :category_id, :condition_id, :delivery_id, 
    :sender_area_id, :number_of_day_id, :price
    ).merge(user_id: current_user.id)
end

end