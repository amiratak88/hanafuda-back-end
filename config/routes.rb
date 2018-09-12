Rails.application.routes.draw do
  get "/cards/deal", to: "cards#deal"
  post "/cards/match", to: "cards#match"
  resources :hands
  resources :collections
  resources :game_players
  resources :tables
  resources :cards
  resources :players
  resources :games

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
