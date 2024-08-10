# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  # Elimina o comenta la siguiente línea si no necesitas set_locale
  # before_action :set_locale 

  private

  def authenticate_user!
    unless user_signed_in?
      redirect_to login_path, alert: 'You need to sign in before continuing.'
    end
  end

  def user_signed_in?
    session[:user_id].present?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user, :user_signed_in?
end
