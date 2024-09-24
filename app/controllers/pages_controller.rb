# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:main]
  before_action :set_notifications, only: [:main]
  def main
  end
  def home
    @featured_courses = Course.featured
    @categories = Category.all
    @my_learning = current_user.courses if current_user
  end
  def set_notifications
    @notifications = current_user.notifications.order(created_at: :desc).limit(5)
  end
end
