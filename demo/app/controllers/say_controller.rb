class SayController < ApplicationController #контроллер say нпследуется от корневого контроллера application, который, в свою очередь наследуется от контроллера Action из Rails
  def hello #определяем метод hello
    @time = Time.now
  end

  def goodbye #определяем метод goodbye
  end
end
