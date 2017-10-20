class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def status_code_presenter
    @status_code_presenter ||= StatusCodePresenter::Base.new
  end

  def status_of(resource, action=nil)
    action = action_name unless action
    status_code_presenter.public_send("on_#{action}", resource)
  end
end
