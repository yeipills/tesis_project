class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in successfully'
    else
      flash.now[:alert] = 'Invalid email or password'
      render :new
    end
  end

  def google_auth
    Rails.logger.info "Google Auth callback reached"
    user_info = request.env['omniauth.auth']
    Rails.logger.info "User info: #{user_info}"
    user = User.find_or_create_by(email: user_info['info']['email']) do |u|
      u.nombre_completo = user_info['info']['name']
      u.user_name = user_info['info']['email']
      u.password = SecureRandom.hex(10)
      u.role = Role.find_by(nombre: 'Estudiante')
      u.career = Career.first
    end

    session[:user_id] = user.id
    redirect_to root_path, notice: 'Logged in successfully with Google'
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: 'Logged out successfully'
  end
end
