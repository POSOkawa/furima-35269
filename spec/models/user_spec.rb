require 'rails_helper'

RSpec.describe User, type: :model do
 
    before do
      @user = FactoryBot.build(:user)
      sleep(0.3)
    end

  describe 'ユーザー新規登録' do

    context 'ユーザー登録ができる時' do
    it '全部あるので登録できる' do
      user = User.new(nickname: 'test', email: 'test@example', password: '00000a', password_confirmation: '00000a', name: '漢字', kana: 'アア', namef: '漢字', kanaf: 'アア', birthd: '1930-03-03')
      user.valid?
      expect(user).to be_valid
    end
  end
  context 'ユーザー登録ができない時' do

    it 'nicknameが空では登録できない' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
    it 'emailが空では登録できない' do
      
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    it 'emailに@がないと登録できない' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    it '重複したemailが存在する場合登録できないこと' do
    @user.save
    another_user = FactoryBot.build(:user, email: @user.email)
    another_user.valid?
    expect(another_user.errors.full_messages).to include('Email has already been taken')
    end

    it 'passwordが空では登録できない' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'passが5文字以下だと登録できない' do
      @user.password = '0000a'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end
    it 'passが数字のみだと登録できない' do
      @user.password = '000000'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is invalid")
    end
    it 'passが英語のみだと登録できない' do
      @user.password = 'aaaaaa'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is invalid")

    end
    it 'passwordが空では登録できない' do
      @user.password = ''
          @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'passが5文字以下だと登録できない' do
      @user.password = '00000'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end
    it 'pass確認がないと登録できない' do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'passと確認があっていないので登録できない' do
      user = User.new(nickname: 'test', email: 'test@example', password: '000000', password_confirmation: '000001', name: ' 漢字', kana: 'アア', birthd: '1930-03-03')
      user.valid?
      expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it '名前がないので登録できない' do
      @user.name = ''
            @user.valid?
      expect(@user.errors.full_messages).to include("Name can't be blank")
    end
    it 'カナがないので登録できない' do
      @user.kana = ''
            @user.valid?
      expect(@user.errors.full_messages).to include("Kana can't be blank")
    end
    it '誕生日がないので登録できない' do
      @user.birthd = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthd can't be blank")
    end
    it '名前が漢字・平仮名・カタカナ以外なので登録できない' do
      @user.name = 'kanji'
      @user.valid?
      expect(@user.errors.full_messages).to include("Name 全角文字を使用してください")
    end
    it 'カナが全角でないので登録できない' do
      @user.kana = 'ｱｱ'
      @user.valid?
      expect(@user.errors.full_messages).to include("Kana 全角カタカナを使用してください")
    end
  end
  end
end