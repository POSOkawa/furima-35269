class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new(params[:id])
      if @user.save
        root_path
      else
        render "shared/_error_messages"
      end
    end
end
