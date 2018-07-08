# Putting in any text for first line comment to make linter happy
class ArticlesController < ApplicationController
  # before_action :set_article, only: %i[index show]

  def index
    @articles = Article.all
    # @articles = user.articles
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new

  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    # @article = user.articles.build(article_params)

    if @article.save
      redirect_to @article
    else render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    authorize @article
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])

      @article.destroy
      redirect_to articles_path, notice: 'Delete successful'
  end

  private

  # def set_article
  #   @article = current_user.articles.find(params[:id])
  # end

  def article_params
    params.require(:article).permit(:title, :text, :user_id)
  end
end
