# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def home
    @featured_courses = Course.featured
    @categories = Category.all
    @my_learning = current_user.courses if current_user
  end
end
