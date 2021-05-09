require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    it '全部あるので登録できる' do
      user = User.new(nickname: 'test', email: 'test@example', password: '000000', password_confirmation: '000000', name: ' 漢字', kana: 'アア', birthd: '1930-03-03')
      user.valid?
      expect(user).to be_valid
    end
    it 'nicknameが空では登録できない' do
      user = User.new(nickname: '', email: 'test@example', password: '000000', password_confirmation: '000000', name: ' 漢字', kana: 'アア', birthd: '1930-03-03')
      user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
    it 'emailが空では登録できない' do
      # emailが空では登録できないテストコードを記述します
      user = User.new(nickname: 'test', email: '', password: '000000', password_confirmation: '000000', name: ' 漢字', kana: 'アア', birthd: '1930-03-03')
      user.valid?
      expect(user.errors.full_messages).to include("Email can't be blank")
    end
    it 'passwordが空では登録できない' do
      user = User.new(nickname: 'test', email: 'test@example', password: '', password_confirmation: '000000', name: ' 漢字', kana: 'アア', birthd: '1930-03-03')
      user.valid?
      expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'passが5文字以下だと登録できない' do
      user = User.new(nickname: 'test', email: 'test@example', password: '00000', password_confirmation: '000000', name: ' 漢字', kana: 'アア', birthd: '1930-03-03')
      user.valid?
      expect(user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end
    it 'pass確認がないと登録できない' do
      user = User.new(nickname: 'test', email: 'test@example', password: '000000', password_confirmation: '', name: ' 漢字', kana: 'アア', birthd: '1930-03-03')
      user.valid?
      expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'passと確認があっていないので登録できない' do
      user = User.new(nickname: 'test', email: 'test@example', password: '000000', password_confirmation: '000001', name: ' 漢字', kana: 'アア', birthd: '1930-03-03')
      user.valid?
      expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it '名前がないので登録できない' do
      user = User.new(nickname: 'test', email: 'test@example', password: '000000', password_confirmation: '000000', name: ' ', kana: 'アア', birthd: '1930-03-03')
      user.valid?
      expect(user.errors.full_messages).to include("Name can't be blank")
    end
    it 'カナがないので登録できない' do
      user = User.new(nickname: 'test', email: 'test@example', password: '000000', password_confirmation: '000000', name: ' 漢字', kana: '', birthd: '1930-03-03')
      user.valid?
      expect(user.errors.full_messages).to include("Kana can't be blank")
    end
    it '誕生日がないので登録できない' do
      user = User.new(nickname: 'test', email: 'test@example', password: '000000', password_confirmation: '000000', name: ' 漢字', kana: 'アア', birthd: '')
      user.valid?
      expect(user.errors.full_messages).to include("Birthd can't be blank")
    end
  end
end
