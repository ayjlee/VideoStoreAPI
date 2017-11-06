Rails.application.routes.draw do
  get 'customers/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :movies, only: [:index, :show, :create]

  resources :customers, only: :index

  get '/zomg', to: 'movies#check', as: 'zomg' #zomg_path
end