class ArticlesController < ApplicationController
  def new
  end

  def create
    @article = Article.new(article_params) #создаём переменную @contact и передаём в неё заполненные данные формы со страницы Contacts
    if @article.valid?
      @article.save
      redirect_to @article
    else
    render action: 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text) #указываем разрешённые для доступа параметры. если не указать здесь параметры, то не получится отправить форму
  end


end
