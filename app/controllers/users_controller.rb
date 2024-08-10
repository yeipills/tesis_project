class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.role_id = Role.find_by(nombre: 'Student').id
    if @user.save
      flash[:notice] = 'Cuenta creada exitosamente. Por favor, inicia sesión.'
      redirect_to login_path
    else
      flash.now[:alert] = @user.errors.full_messages.to_sentence
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:nombre_completo, :email, :user_name, :password, :password_confirmation, :career_id)
  end
end
