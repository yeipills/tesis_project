class UniversitiesController < ApplicationController
  before_action :set_university, only: %i[show edit update destroy]

  def index
    @universities = University.all
  end

  def show
  end

  def new
    @university = University.new
  end

  def edit
  end

  def create
    @university = University.new(university_params)

    if @university.save
      redirect_to @university, notice: 'University was successfully created.'
    else
      render :new
    end
  end

  def update
    if @university.update(university_params)
      redirect_to @university, notice: 'University was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @university.destroy
    redirect_to universities_url, notice: 'University was successfully destroyed.'
  end

  private

  def set_university
    @university = University.find(params[:id])
  end

  def university_params
    params.require(:university).permit(:nombre)
  end
end
