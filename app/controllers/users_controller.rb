class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.role_id = Role.find_by(nombre: 'Student').id
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Account created successfully'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:nombre_completo, :email, :user_name, :password, :password_confirmation, :career_id)
  end
end
