require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe 'アイテムの保存' do
    context 'アイテムが保存できる場合' do
      it '全ての項目が入力されていれば登録できる' do
        end
    end
    context 'アイテムが保存できない場合' do
      it 'imageがないとアイテムは保存できない' do
        
      end     
      it "nameがないとアイテムは保存できない" do
      end     
      it "contentがないとアイテムは保存できない" do
      end     
      it "category_idがないとアイテムは保存できない" do
      end     
      it "condition_idがないとアイテムは保存できない" do
      end     
      it "delivery_payment_idがないとアイテムは保存できない" do
      end     
      it "sender_area_idがないとアイテムは保存できない" do
      end     
      it "number_of_day_idがないとアイテムは保存できない" do
      end     
      it "priceがないとアイテムは保存できない" do
      end     
      
      it "ユーザーが紐付いていないとアイテムは保存できない" do
      end
    end
  end
end


#image,name,content,category_id,condition_id,delivery_payment_id,
 #         sender_area_id,number_of_day_id,price があればアイテムは保存される