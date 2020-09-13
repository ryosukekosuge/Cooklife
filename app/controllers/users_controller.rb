class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def new
  end

  def edit
  	 @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user.id)
    end
  end

  def update
  end

  private
  def user_params
  	  params.require(:user).permit(:name, :introduction , :profile_image)
  end
end
