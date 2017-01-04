class ArticlesController < ApplicationController

  before_action :authorize, only: [:create, :update, :destroy]

  def index
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    if @article.save
      redirect_to user_path(@article.user_id)
        end
  end

  def edit
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.delete
    redirect_to user_path(@article.user_id)
  end
  end

  def update
    @article = Article.find(params[:id])
    if  @article.update_attributes(article_params)
      redirect_to article_path(@article)
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private
  def article_params
    return params.require(:article).permit(:name, :body)
  end

end
