class WhobuyController < ApplicationController
  def index
    if current_user.id != @item.user_id
      @item_order = ItemOrder.new
    else
      redirect_to root_path
    end
  end
  
  def create
   
  
  end
  
  private
  
    def メソッド名
      params.permit(指定のカラムを記述する)
    end
end