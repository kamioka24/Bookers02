Rails.application.routes.draw do
  get 'home/about'
  root 'users#top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books do
  	resource :favorites, only: [:create, :destroy]
  end
  resources :users
end