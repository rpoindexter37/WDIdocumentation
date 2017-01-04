class RubiesController < ApplicationController
  def show
@ruby = Ruby.find(params[:id])
  end

  def index
    @ruby = Ruby.all
  end

  def create
    @ruby = Ruby.new(ruby_params)
    @ruby.user_id = current_user.id
    if @ruby.save
      redirect_to user_path(@ruby.user_id)
        end
  end

  def destroy
    @ruby = Ruby.find(params[:id])
    @ruby.delete
    redirect_to user_path(@ruby.user_id)
  end

  def new
  end

  def update
    @ruby = Ruby.find(params[:id])
    if  @ruby.update_attributes(ruby_params)
      redirect_to ruby_path(@ruby)
    end
  end

  def edit
  end

  private
  def ruby_params
    return params.require(:ruby).permit(:name, :body)
  end
end
