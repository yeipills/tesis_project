class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.role_id = Role.find_by(nombre: 'Student')&.id
    
    if @user.role_id.nil?
      Rails.logger.error "Role 'Student' not found"
      flash[:alert] = "Role 'Student' not found. Please contact support."
      render :new and return
    end

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Account created successfully'
    else
      log_and_show_errors
      render :new
    end
  rescue => e
    Rails.logger.error "Error creating user: #{e.message}"
    flash[:alert] = "An error occurred while creating your account. Please try again."
    render :new
  end

  private

  def user_params
    params.require(:user).permit(:nombre_completo, :email, :user_name, :password, :password_confirmation, :career_id)
  end

  def log_and_show_errors
    Rails.logger.error "User creation failed: #{@user.errors.full_messages.join(", ")}"
    flash.now[:alert] = @user.errors.full_messages.to_sentence
  end
end
