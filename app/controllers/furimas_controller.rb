class FurimasController < ApplicationController
  #before_action :furimas_params, except: [:index, :new, :create]

  
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

  def show
    @furima = Furima.find(params[:id])
  end

  def edit
    @furima = Furima.find(params[:id])
  end

  def update
    @furima = Furima.find(params[:id])
    if @furima.update(furimas_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
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
end
