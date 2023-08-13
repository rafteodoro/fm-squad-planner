# frozen_string_literal: true

Rails.application.routes.draw do
  root 'articles#index'
  get '/articles', to: 'articles#index'
  get '/players', to: 'players#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Creates the route for the import for the CSV file
  resources :players do
    collection do
      post :import
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
