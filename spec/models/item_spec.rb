require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe 'アイテムの保存' do
    context 'アイテムが保存できる場合' do
      it '全ての項目が入力されていれば登録できる' do
        expect(@item).to be_valid
      end
    end
    context 'アイテムが保存できない場合' do
      it 'imageがないとアイテムは保存できない' do
        
      end     
      it "nameがないとアイテムは保存できない" do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end     
      it "contentがないとアイテムは保存できない" do
        @item.content = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Content can't be blank")
      end     
      it "category_idがないとアイテムは保存できない" do
        @item.category_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end     
      it "condition_idがないとアイテムは保存できない" do
        @item.condition_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Condition can't be blank")
      end     
      it "delivery_payment_idがないとアイテムは保存できない" do
        @item.delivery_payment_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery payment can't be blank")
      end     
      it "sender_area_idがないとアイテムは保存できない" do
        @item.sender_area_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Sender area can't be blank")
      end     
      it "number_of_day_idがないとアイテムは保存できない" do
        @item.number_of_day_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Number of day can't be blank")
      end     
      it "priceがないとアイテムは保存できない" do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end     
      
      it "ユーザーが紐付いていないとアイテムは保存できない" do
      end
    end
  end
end


