# frozen_string_literal: true

Rails.application.routes.draw do
  root 'players#index'

  # Creates the route for the import for the CSV file
  resources :players do
    collection do
      post :import_csv
      post :import_html
    end
  end
  # Edits the hidden attributes of a player
  get '/players/:id/edit_hidden', to: 'players#edit_hidden', as: 'edit_hidden'
  # Routes to edit the position map of a player
  resources :posmaps, only: %i[edit update]

  resources :tactics, only: %i[index show new create destroy] do
    resources :positions, only: %i[new create]
  end
  resources :positions, only: %i[index show edit update destroy]

  # Evaluates a tactic using the players added in the database
  get '/tactics/:id/evaluate', to: 'tactics#evaluate', as: 'evaluate_tactic'

  # Hides a player from a given role
  post '/hide', to: 'position_blacklists#hide', as: :hide

  # Deletes all blacklists for a given position
  delete '/show_all_players', to: 'position_blacklists#show_all_players', as: :show_all_players
end
