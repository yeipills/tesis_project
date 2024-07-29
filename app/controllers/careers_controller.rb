class CareersController < ApplicationController
  before_action :set_career, only: %i[show edit update destroy]

  def index
    @careers = Career.all
  end

  def show
  end

  def new
    @career = Career.new
  end

  def edit
  end

  def create
    @career = Career.new(career_params)

    if @career.save
      redirect_to @career, notice: 'Career was successfully created.'
    else
      render :new
    end
  end

  def update
    if @career.update(career_params)
      redirect_to @career, notice: 'Career was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @career.destroy
    redirect_to careers_url, notice: 'Career was successfully destroyed.'
  end

  private

  def set_career
    @career = Career.find(params[:id])
  end

  def career_params
    params.require(:career).permit(:nombre, :university_id)
  end
end
