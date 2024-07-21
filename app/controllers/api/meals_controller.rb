module Api 
  class MealsController < ApplicationController
    def index
      random_recipe = ::MealDb::Client.random
      render json: random_recipe
    end

    def show_category_list
      meal_categories = ::MealDb::Client.list_categories
      render json: meal_categories
    end

    def show_ingredient_list
      meal_ingredients = ::MealDb::Client.list_ingredients 
      render json: meal_ingredients
    end

    def show_cuisine_list
      meal_cuisines = ::MealDb::Client.list_cuisines
      render json: meal_cuisines
    end

    def search_name
      search_result = ::MealDb::Client.search_by_name(search_params)
      render json: search_result
    end

    def show_by_category
      filter_result = ::MealDb::Client.filter_by_category(filter_category_params)
      render json: filter_result
    end

    def show_by_ingredient 
      filter_result = ::MealDb::Client.filter_by_ingredient(filter_ingredient_params)
      render json: filter_result
    end

    def show_by_cuisine
      filter_result = ::MealDb::Client.filter_by_cuisine(filter_cuisine_params)
      render json: filter_result
    end

    private

    def search_params
      params.require(:name)
    end

    def filter_category_params
      params.require(:category)
    end

    def filter_ingredient_params
      params.require(:ingredient)
    end

    def filter_cuisine_params
      params.require(:cuisine)
    end
  end
end