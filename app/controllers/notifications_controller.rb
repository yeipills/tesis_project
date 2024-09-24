class NotificationsController < ApplicationController
  before_action :set_notification, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @notifications = current_user.notifications.order(created_at: :desc)
    @unread_count = @notifications.where(read: false).count
  end

  def show
    @notification.update(read: true) if @notification.read == false
  end

  def mark_all_as_read
    current_user.notifications.update_all(read: true)
    redirect_to notifications_path, notice: 'Todas las notificaciones fueron marcadas como leídas.'
  end

  def destroy
    @notification.destroy
    redirect_to notifications_url, notice: 'Notification was successfully destroyed.'
  end

  private

  def set_notification
    @notification = current_user.notifications.find(params[:id])
  end

  def notification_params
    params.require(:notification).permit(:mensaje, :user_id, :read)
  end
end
