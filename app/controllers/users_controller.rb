class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
  end
  
  def show
    @books = Book.all
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(user.id)
  end
  
  private
  def user_params
    params.require(:user).permit(:title, :image, :body)
  end
end
