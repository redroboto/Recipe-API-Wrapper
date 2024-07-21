Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :recipes

  namespace :api do
    get "/meals/random", to: "meals#index"
    get "meals/categories", to: "meals#show_category_list"
    get "meals/ingredients", to: "meals#show_ingredient_list"
    get "meals/cuisines", to: "meals#show_cuisine_list"
    get "/meals/name/:name", to: "meals#search_name"
    get "/meals/category/:category", to: "meals#show_by_category"
    get "/meals/ingredient/:ingredient", to: "meals#show_by_ingredient"
    get "/meals/cuisine/:cuisine", to: "meals#show_by_cuisine"
  end
end
