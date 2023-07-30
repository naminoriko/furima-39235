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
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'nameがないとアイテムは保存できない' do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it 'contentがないとアイテムは保存できない' do
        @item.content = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Content can't be blank")
      end
      it 'category_idが1だとアイテムは保存できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
      it 'condition_idが1だとアイテムは保存できない' do
        @item.condition_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Condition can't be blank")
      end
      it 'delivery_payment_idが1だとアイテムは保存できない' do
        @item.delivery_payment_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery payment can't be blank")
      end
      it 'sender_area_idが1だとアイテムは保存できない' do
        @item.sender_area_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Sender area can't be blank")
      end
      it 'number_of_day_idが1だとアイテムは保存できない' do
        @item.number_of_day_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Number of day can't be blank")
      end
      it 'priceがないとアイテムは保存できない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it 'priceは300円未満は保存できない' do
        @item.price = '299'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be greater than or equal to 300')
      end
      it 'priceは9999999円を超えると保存できない' do
        @item.price = '10000000'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be less than or equal to 9999999')
      end
      it 'priceは半角英数字でないと保存できない' do
        @item.price = '３００'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is not a number')
      end
      it 'ユーザーが紐付いていないとアイテムは保存できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('User must exist')
      end
    end
  end
end
