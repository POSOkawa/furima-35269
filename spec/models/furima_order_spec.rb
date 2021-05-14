require 'rails_helper'
  describe FurimaOrder do
    before do
      @furima_order = FactoryBot.build(:furima_order)
      sleep(0.3)
    end
    describe '#create' do

    context '購入ができる時' do
      it '入力されていれば購入ができる' do
        user = FactoryBot.create(:user)
      furima = FactoryBot.create(:furima)
      furima_order = FactoryBot.build(:furima_order, user_id:user.id, furima_id:furima.id)
        expect(furima_order).to be_valid
      end
    end

    context '購入ができん時' do
      it 'tokenがないと購入できない' do
        @furima_order.token = nil
        @furima_order.valid?
        expect(@furima_order.errors.full_messages).to include("Token can't be blank")
      end
      it 'yubinが空だと購入ができない' do
        @furima_order.yubin = ""
        @furima_order.valid?
        expect(@furima_order.errors.full_messages).to include("Yubin can't be blank")
      end
      it 'yubinに-がないと購入ができない' do
        @furima_order.yubin = "1000001"
        @furima_order.valid?
        expect(@furima_order.errors.full_messages).to include("Yubin is invalid")
      end
      it 'basyo_idが0だと購入できない' do
        @furima_order.basyo_id = 0
        @furima_order.valid?
        expect(@furima_order.errors.full_messages).to include("Basyo must be other than 0")
      end
      it 'sityosonが空だと購入できない' do
        @furima_order.sityoson = ""
        @furima_order.valid?
        expect(@furima_order.errors.full_messages).to include("Sityoson can't be blank")
      end
      it 'bantiが空だと購入できない' do
        @furima_order.banti= ""
        @furima_order.valid?
        expect(@furima_order.errors.full_messages).to include("Banti can't be blank")
      end
      it 'phoneが空だと購入できない' do
        @furima_order.phone = ""
        @furima_order.valid?
        expect(@furima_order.errors.full_messages).to include("Phone can't be blank")
      end
      
      it 'phoneが半角数字じゃないと購入できない' do
        @furima_order.phone = "dennwa"
        @furima_order.valid?
        expect(@furima_order.errors.full_messages).to include("Phone is invalid")
      end
      it 'phoneが桁が適正でないと購入できない' do
        @furima_order.phone = "090090090090"
        @furima_order.valid?
        expect(@furima_order.errors.full_messages).to include("Phone is invalid")
      end
      it 'furima_idが0だと購入できない' do
        @furima_order.furima_id = ""
        @furima_order.valid?
        expect(@furima_order.errors.full_messages).to include("Furima can't be blank")
    end
    it 'user_idが0だと購入できない' do
      @furima_order.user_id = ""
      @furima_order.valid?
      expect(@furima_order.errors.full_messages).to include("User can't be blank")
    end
  end
end
end