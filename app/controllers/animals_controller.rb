class AnimalsController < ApplicationController
def index
  animals = Animal.all
  render json: animals.as_json
end
def show
  animal = Animal.find_by(id: params[:id])
  render json: animal.as_json

end


def create
  animal = Animal.new
  animal.species = params[:species]
  animal.age = params[:age]
  animal.save
  render json: animal.as_json
end

def update
  animal = Animal.find_by(id: params[:id])
  animal.species = params[:species] || animal.species
  animal.age = params[:age] || animal.age
  animal.save
  render json: animal.as_json
end

def destroy
  animal = Animal.find_by(id: params[:id])
  animal.destroy
  render json: {message: "Thing destroyed"}
end
end
