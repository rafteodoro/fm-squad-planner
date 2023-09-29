# frozen_string_literal: true

Rails.application.routes.draw do
  root 'players#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Creates the route for the import for the CSV file
  resources :players do
    collection do
      post :import
    end
  end

  resources :tactics, only: %i[index show new create] do
    resources :positions, only: %i[new create]
  end

  resources :positions, only: %i[index show edit update destroy]
  resources :posmaps, only: %i[edit update]

  get '/tactics/:id/evaluate', to: 'tactics#evaluate', as: 'evaluate_tactic'
end
