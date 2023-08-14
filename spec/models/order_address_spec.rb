require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  describe '注文情報の保存' do
    before do
      user = FactoryBot.create(:user)
      item = FactoryBot.create(:item)
      @order_address = FactoryBot.build(:order_address, user_id: user.id, item_id: item.id)
    end

    context '内容に問題ない場合' do
      it 'すべての値が正しく入力されていれば保存できること' do
       # expect(@order_address).to be_valid
      end
      it 'buildingは空でも保存できること' do
      #  @order_address.building = ''
      #  expect(@order_address).to be_valid
      end
    end

    context '内容に問題がある場合' do
      it 'post_codeが空だと保存できないこと' do
      end
      it 'postal_codeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
      end
      it 'sender_area_idを選択していないと保存できないこと' do
      end
      it 'cityが空だと保存できないこと' do
      end
      it 'banchiが空だと保存できないこと' do
      end
      it 'phone_numberが空では保存できないこと' do
      end
      it 'userが紐付いていないと保存できないこと' do
      end
      it 'itemが紐付いていないと保存できないこと' do
      end
    end
  end
end