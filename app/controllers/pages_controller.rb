# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:main]
  def main
  end
  def home
    @featured_courses = Course.featured
    @categories = Category.all
    @my_learning = current_user.courses if current_user
  end
end
