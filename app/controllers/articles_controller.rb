# Top-level comment
class ArticlesController < ApplicationController

  def index
    @articles = Article.all
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
    # @article = current_user.articles.build(article_params)
    # @article.user_id = current_user

    if @article.save
      redirect_to @article
    else render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    # authorize @article
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

  def set_article
    @article = current_user.articles.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :author, :image, :text)
  end
end
