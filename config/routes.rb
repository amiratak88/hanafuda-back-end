Rails.application.routes.draw do
  resources :hands
  resources :collections
  resources :game_players
  resources :tables
  resources :cards
  resources :players
  resources :games

  get "/cards/deal", to: "cards#deal"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
