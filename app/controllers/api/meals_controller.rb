module Api 
  class MealsController < ApplicationController
    def index
      random_recipe = ::MealDb::Client.random
      render json: random_recipe
    end

    def categories
      meal_categories = ::MealDb::Client.categories
      render json: meal_categories
    end

    def search_name
      search_result = ::MealDb::Client.search_by_name(search_params)
      render json: search_result
    end

    def filter_category
      filter_result = ::MealDb::Client.filter_by_category(filter_category_params)
    end

    private

    def search_params
      params.require(:name)
    end

    def filter_category_params
      params.require(:category)
    end
  end
end