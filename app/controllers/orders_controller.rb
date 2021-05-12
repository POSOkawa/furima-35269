class OrdersController < ApplicationController
  def index
    @furimas = Furima.all
    if current_user = @furima_user
      redirect_to root_path
    else
      @furima_order = FurimaOrder.new
    end
  end
  
  def create
    @furimas = Furima.all
    @furima_order = FurimaOrder.new(order_params)
    if @furima_order.valid?
      @furima_order.save
      return redirect_to root_path
    else
      render :index
    end
  end
  
  private
  
    def order_params
      params.require(:furima_order).permit(:yubin, :sityoson, :banti, :tatemono, :phone, :basyo_id).merge(furima_id: params[:furima_id], user_id: current_user.id )
    end

end
