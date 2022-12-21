class PetsController < ApplicationController
  def index
    @pets = Pet.all
    render template: "pets/index"
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    render template: "pets/show"
  end

  def new
    @pet = Pet.new
    render template: "pets/new"
  end

  def create
    @pet = Pet.new(
      name: params[:pet][:name],
      breed: params[:pet][:breed],
      image: params[:pet][:image],
    )
    @pet.save
    redirect_to "/pets"
  end

end
