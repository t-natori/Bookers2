class UsersController < ApplicationController
  def index
    @book = Book.new
    @user = current_user
    @users = User.all
  end
  
  
  def show
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user.id)
  end
  
  private
  
  
  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end
end
