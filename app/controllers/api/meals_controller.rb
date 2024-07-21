module Api 
  class MealsController < ApplicationController
    def index
      random_recipe = ::MealDb::Client.random
      render json: random_recipe
    end
  end
end