class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all(pet_params)
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to @pet
    else
      render :new
    end
  end

  def edit
  end

  def update
    @pet = Pet.update(pet_params)
    if @pet.save
      redirect_to path_to(@pet)
    else
      render :edit
    end
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end
  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :pet_type, :owner_id )
  end
end
