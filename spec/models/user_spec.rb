require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do
    describe 'ユーザー登録' do
  
      it "nicknameがない場合は登録できないこと" do
        @user.nickname = ''
  @user.valid?
  expect(@user.errors.full_messages).to include('名前をいれてください')
      end
  
      it "emailがない場合は登録できないこと" do
        @user.email = ''
  @user.valid?
  expect(@user.errors.full_messages).to include('メールをいれてください')
      end
  
      it "passwordがない場合は登録できないこと" do
        @user.password = ''
  @user.valid?
  expect(@user.errors.full_messages).to include('パスワードを入れてください')
      end
  
      it "passwordが6文字以下であれば登録できないこと" do
        @user.password = '000aaa'
  @user.password_confirmation = '000aaa'
  @user.valid?
  expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
  
      it "passwordが数字のみの場合は登録できないこと" do
        @user.password = '0000000'
  @user.valid?
  expect(@user.errors.full_messages).to include('英語も使ってください')
      end
  
      it "passwordが英文字のみの場合は登録できないこと" do
        @user.password = 'aaaaaaa'
  @user.valid?
  expect(@user.errors.full_messages).to include('数字も使ってください')
      end
  
      it "password_confirmationがない場合は登録できないこと" do
        @user.password_confirmation = ''
  @user.valid?
  expect(@user.errors.full_messages).to include('Password confirmationがないです')
      end
  
      it "kanaがない場合は登録できないこと" do
        @user.kana = ''
  @user.valid?
  expect(@user.errors.full_messages).to include('かなをいれてください')
      end

      it "birthdがない場合は登録できないこと" do
        @user.birthd = ''
  @user.valid?
  expect(@user.errors.full_messages).to include('日付をいれてください')
      end
    end
  end
end
