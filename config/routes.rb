Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :recipes

  namespace :api do
    get "/random", to: "meals#index"
    get "/categories", to: "meals#categories"
    get "/meals/:name", to: "meals#search_name"
    get "/meals/:category", to: "meals#filter_by_category"
  end
end
