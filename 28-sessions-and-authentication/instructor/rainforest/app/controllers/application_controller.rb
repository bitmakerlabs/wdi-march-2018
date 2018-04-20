class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

private

  def current_user
    user_id = session[:user_id]
    user_id && User.find(user_id)
  end

end
