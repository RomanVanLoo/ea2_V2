class ArticlesController < ApplicationController
    skip_before_action :authenticate_user!, only: :show

  def index
    @articles = Article.all.order(:id)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @new_article = Article.new
  end

  def create
    article = Article.new(article_params)
    if article.save
      redirect_to admin_path, notice: "Article succesfully created"
    else
      render :new, alert: article.errors.full_messages.join(', ')
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    if article.update(article_params)
      redirect_to admin_path, notice: "Article succesfully created"
    else
      render :edit, alert: article.errors.full_messages.join(', ')
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      redirect_to admin_path
    else
      render :index, alert: @article.errors.full_messages.join(', ')
    end
  end

  private

  def article_params
    params.require(:article).permit(
      :title,
      :description,
      :price,
      :category,
      :dimensions,
      photos: []
    )
  end
end
