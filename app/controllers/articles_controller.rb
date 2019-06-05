class ArticlesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]
  # skip_after_action :verify_authorized, only: :show

  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:home], raise: false

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
        redirect_to @article
    else
        render 'new'
    end
    # authorize @article
  end

  def edit
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.permit(:title, :detail, :banner_url)
  end
end
