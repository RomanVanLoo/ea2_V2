class ArticlesController < ApplicationController
  def index
    @articles = Article.all
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
    @article.destroy
    redirect_to admin_path
  end

  private

  def article_params
    params.require(:article).permit(
      :title,
      :description,
      :price,
      :category,
      :dimensions,
      :article_image
    )
  end
end
