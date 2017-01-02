class ContactsController < ApplicationController
  def new
  end

  def create
    @contact = Contact.new(contact_params) #создаём переменную @contact и передаём в неё заполненные данные формы со страницы Contacts
    @contact.save
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :message) #указываем разрешённые для доступа параметры. если не указать здесь параметры, то не получится отправить форму
  end

end
