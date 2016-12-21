class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new

    @user = User.new
  end

  def create #actually saves the user record
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def user_params
    return params.require(:user).permit(:name, :email, :password, :password_confirmation)

  end
end
