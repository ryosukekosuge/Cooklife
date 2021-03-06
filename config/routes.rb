Rails.application.routes.draw do
  root "homes#top"
  devise_for :users
  resources :users
 resources :recipes do
  resource :favorites, only: [:create, :destroy]
  resources :recipe_comments, only: [:create, :destroy]
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
