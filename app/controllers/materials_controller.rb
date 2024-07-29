class MaterialsController < ApplicationController
  before_action :set_material, only: %i[show edit update destroy]

  def index
    @materials = Material.all
  end

  def show
  end

  def new
    @material = Material.new
  end

  def edit
  end

  def create
    @material = Material.new(material_params)

    if @material.save
      redirect_to @material, notice: 'Material was successfully created.'
    else
      render :new
    end
  end

  def update
    if @material.update(material_params)
      redirect_to @material, notice: 'Material was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @material.destroy
    redirect_to materials_url, notice: 'Material was successfully destroyed.'
  end

  private

  def set_material
    @material = Material.find(params[:id])
  end

  def material_params
    params.require(:material).permit(:titulo, :contenido, :course_id)
  end
end
