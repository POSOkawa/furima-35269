class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: [:index, :create]
  before_action :honnin, only: [:index, :create]
  before_action :noorder, only: [:index, :create]
  
  def index
      @furima_order = FurimaOrder.new
    end
  
  def create
    @furima_order = FurimaOrder.new(order_params)
    if @furima_order.valid?
      pay_furima
      @furima_order.save
      return redirect_to root_path
    else
      render :index
    end
  end
  
  private
  
    def order_params
      params.require(:furima_order).permit(:yubin, :sityoson, :banti, :tatemono, :phone, :basyo_id).merge(token: params[:token], furima_id: params[:furima_id], user_id: current_user.id )
    end
def pay_furima
  Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
      Payjp::Charge.create(
        amount: @furima.price,
        card: order_params[:token], 
        currency: 'jpy'
      )
end

  def honnin
    redirect_to root_path if current_user.id == @furima.user_id
  end

  def noorder
  redirect_to root_path if @furima.order != nil
  end

  def set_order
    @furima = Furima.find(params[:furima_id])
  end

end
