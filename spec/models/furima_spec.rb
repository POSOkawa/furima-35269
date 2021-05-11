require 'rails_helper'
describe Furima do
  before do
    @furima = FactoryBot.build(:furima)
  end
  describe '#create' do

    context '出品ができる時' do
    it "足りている" do
      user = FactoryBot.create(:user)
      furima = FactoryBot.build(:furima)
      expect(furima).to be_valid
    end
  end
  context '出品ができない時' do
    it '画像が空では登録されない' do
      @furima.image = nil
      @furima.valid?
      expect(@furima.errors.full_messages).to include("Image can't be blank")
    end
    it '名前が空では登録されない' do
      @furima.name = ''
      @furima.valid?
      expect(@furima.errors.full_messages).to include("Name can't be blank")
    end
    it '説明が空では登録されない' do
      @furima.setumei = ''
      @furima.valid?
      expect(@furima.errors.full_messages).to include("Setumei can't be blank")
    end
    it 'idで0が選択された場合は登録されない' do
      @furima.jyoutai_id = 0
      @furima.valid?
      expect(@furima.errors.full_messages).to include("Jyoutai must be other than 0")
    end
    it 'idで0が選択された場合は登録されない' do
      @furima.category_id = 0
      @furima.valid?
      expect(@furima.errors.full_messages).to include("Category must be other than 0")
    end
      it 'idで0が選択された場合は登録されない' do
        @furima.basyo_id = 0
        @furima.valid?
        expect(@furima.errors.full_messages).to include("Basyo must be other than 0")
      end
        it 'idで0が選択された場合は登録されない' do
          @furima.futan_id_id = 0
          @furima.valid?
          expect(@furima.errors.full_messages).to include("Futan must be other than 0")
        end
          it 'idで0が選択された場合は登録されない' do
            @furima.hassou_id = 0
            @furima.valid?
            expect(@furima.errors.full_messages).to include("Hassou must be other than 0")
          end
    it 'priceが空では登録されない' do
      @furima.price = ""
      @furima.valid?
      expect(@furima.errors.full_messages).to include("Price can't be blank")
    end
    it 'priceが半角数字以外では登録できない' do
      @furima.price = "１０００"
      @furima.valid?
      expect(@furima.errors.full_messages).to include("Price is not a number")
    end
    it 'priceが300より少ないと登録できない' do
      @furima.price = 50
      @furima.valid?
      expect(@furima.errors.full_messages).to include("Price must be greater than 299")
    end
    it 'priceが9999999より多いと登録できない' do
      @furima.price = 600000000
      @furima.valid?
      expect(@furima.errors.full_messages).to include("Price must be less than 100000000")
    end
  end

  end
end