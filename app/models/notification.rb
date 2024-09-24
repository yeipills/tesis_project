# app/models/notification.rb
class Notification < ApplicationRecord
  belongs_to :user

  after_create_commit { broadcast_notification }

  private

  def broadcast_notification
    ActionCable.server.broadcast "notifications_#{user.id}", {
      message: render_notification(self)
    }
  end

  def render_notification(notification)
    ApplicationController.renderer.render(partial: 'notifications/notification', locals: { notification: notification })
  end
end
