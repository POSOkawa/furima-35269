class FurimasController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_furima, only: [:update, :edit, :show, :destroy, :noorder]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]
  before_action :noorder, only: [:edit, :update, :destroy]

  def index
    @furimas = Furima.all.order(created_at: "DESC")
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

  def show
  end

  def edit
    unless user_signed_in? && current_user.id == @furima.user_id
      redirect_to root_path
    end
  end

  def update
    if @furima.update(furimas_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @furima.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private
  def furimas_params
    params.require(:furima).permit(:name, :setumei, :price, :image, :basyo_id, :category_id, :futan_id, :hassou_id, :jyoutai_id).merge(user_id: current_user.id)
  end

  def set_furima
    @furima = Furima.find(params[:id])
  end

 
  def contributor_confirmation
  
    if current_user == @furima_user
      redirect_to root_path
    end
    end
    
    def noorder
    redirect_to root_path if @furima.order != nil
    end

end
