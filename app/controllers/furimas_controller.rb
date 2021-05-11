class FurimasController < ApplicationController
  #before_action :back_to_login, except: [:index, :show]
  
  def index
    @furimas = Furima.all
  end

  def new
    @furima = Furima.new
  end 

  def create
    @furima = Furima.new(furimas_params)
    if @furima.save
      redirect_to root_path
    else
      render :new
    end
  end

  

  private
  def furimas_params
    params.require(:furima).permit(:name, :setumei, :price, :image, :basyo_id, :category_id, :futan_id, :hassou_id, :jyoutai_id).merge(user_id: current_user.id)
  end

  def set_furima
    @furima = Furima.find(params[:id])
  end

  def back_to_login
    redirect_to new_user_session_path unless user_signed_in?
  end
end
