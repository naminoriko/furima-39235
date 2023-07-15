require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    it 'nicknameが空では登録できない' do
      user = User.new(nickname: '', email: 'test@example', password: '000abc', password_confirmation: '000abc', last_name: '鈴木', first_name: '一郎', last_name_kana: 'スズキ', first_name_kana: 'イチロウ', birthday: '1980-01-01' )
      user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
    it 'last_nameが空では登録できない' do
    end
    it 'first_nameが空では登録できない' do
    end
    it 'last_name_kanaが空では登録できない' do
    end
    it 'first_name_kanaが空では登録できない' do
    end
    it 'birthdayが空ではと黒くできない' do
    end

  end
end
