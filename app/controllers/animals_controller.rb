class AnimalsController < ApplicationController
def index
  animals = Animal.all
  render json: animals.as_json
end
end
