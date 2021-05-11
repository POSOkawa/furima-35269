class FurimasController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_furima, only: [:update, :edit, :show]
  before_action :contributor_confirmation, only: [:edit, :update]
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
  end

  def update
    if @furima.update(furimas_params)
      redirect_to root_path
    else
      render :edit
    end
  end


  #def destroy
    @furima = Furima.find(params[:id])
  @furima.destroy

    if @furima.destroy
      redirect_to root_path
    else
      redirect_to root_path
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
  
    if current_user == @furima.user
      redirect_to root_path
    end
    end
end
