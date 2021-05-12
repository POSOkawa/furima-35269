class FurimaOrder
  include ActiveModel::Model
  attr_accessor :user_id, :furima_id, :yubin, :basyo_id, :sityoson, :banti, :tatemono, :phone, :order_id

  with_options presence: true do
    validates :user_id
    validates :furima_id
    validates :yubin
    validates :sityoson
    validates :banti
    validates :phone
    validates :basyo_id, numericality: { other_than: 0 }
  end

  def save
    order = Order.create(user_id: user_id, furima_id: furima_id)
    Wheredeli.create(yubin: yubin, basyo_id: basyo_id, sityoson: sityoson, banti: banti, tatemono: tatemono, phone: phone, order_id: order.id)
  end
end