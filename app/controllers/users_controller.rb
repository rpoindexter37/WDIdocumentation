class UsersController < ApplicationController
  def index
    @users = User.all
    @articles = Article.all
    @rubies = Ruby.all
  end

  def show
    if not current_user
      redirect_to new_session_path
    else
      @user = User.find(params[:id])
      @article = Article.new
      @ruby = Ruby.new
    end
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
