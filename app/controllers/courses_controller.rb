class CoursesController < ApplicationController
  before_action :set_course, only: %i[show edit update destroy]
  after_action :verify_authorized

  def index
    @courses = policy_scope(Course)
  end

  def show
    authorize @course
  end

  def new
    @course = Course.new
    authorize @course
  end

  def edit
    authorize @course
  end

  def create
    @course = Course.new(course_params)
    authorize @course

    if @course.save
      redirect_to @course, notice: 'Course was successfully created.'
    else
      render :new
    end
  end

  def update
    authorize @course
    if @course.update(course_params)
      redirect_to @course, notice: 'Course was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    authorize @course
    @course.destroy
    redirect_to courses_url, notice: 'Course was successfully destroyed.'
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:nombre, :descripcion, :professor_id)
  end
end
