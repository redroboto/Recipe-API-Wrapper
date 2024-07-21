Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :recipes

  namespace :api do
    get "/meals/random", to: "meals#index"
    get "meals/categories", to: "meals#list_categories"
    get "meals/ingredients", to: "meals#list_ingredients"
    get "meals/cuisines", to: "meals#list_cuisines"
    get "/meals/name/:name", to: "meals#search_name"
    get "/meals/category/:category", to: "meals#show_by_category"
    get "/meals/ingredient/:ingredient", to: "meals#show_by_ingredient"
    get "/meals/cuisine/:cuisine", to: "meals#show_by_cuisine"
  end
end
