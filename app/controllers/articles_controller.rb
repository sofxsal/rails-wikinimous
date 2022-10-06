class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)
    @article.save

    redirect_to article_path(@article)
  end

  def edit
  end

  def update
    @article.update(articles_params)

    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def articles_params
    params.require(:article).permit(:title, :content)
  end
end
