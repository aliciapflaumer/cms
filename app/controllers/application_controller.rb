# Top-level documentation line makes linter happy
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def logged_in?
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  helper_method :logged_in?

end
