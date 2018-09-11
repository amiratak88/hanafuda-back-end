Rails.application.routes.draw do
  resources :hands
  resources :collections
  resources :game_players
  resources :tables
  resources :cards
  resources :players
  resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
