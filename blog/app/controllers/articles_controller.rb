class ArticlesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @articles = Article.all.order id: :desc
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_params) #создаём переменную @contact и передаём в неё заполненные данные формы со страницы Contacts
    if @article.save
      redirect_to articles_path
      else
      render action: 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
      if @article.update(article_params)
      redirect_to @article
      else
      render action: 'edit'
    end 
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text) #указываем разрешённые для доступа параметры. если не указать здесь параметры, то не получится отправить форму
  end


end
