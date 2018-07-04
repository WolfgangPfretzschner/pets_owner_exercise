class OwnersController < ApplicationController
  before_action :set_owner, only: [:show, :edit, :update, :destoy]

  def index
    @owners = Owner.all
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to path_to(@owner)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @owner.update(owner_params)
    if @owner.save
      redirect_to path_to(@owner)
    else
      render :edit
    end
  end

  def destroy
    @owner.destoy
    redirect_to owners_path
  end

  private

  def set_owner
    @owner = Owner.find(params[:id])
  end

  def owner_params
    params.require(:owner).permit(:name)
  end
end
