# Top-level documentation line makes linter happy
class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  private

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
  helper_method :current_user
end
