Rails.application.routes.draw do
  # resources :recipe_ingredients
  resources :ingredients, only: [:index, :show]
  resources :recipes, only: [:index, :show, :new, :create]
  resources :users, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
