Rails.application.routes.draw do
  devise_for :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :games
  resources :players
  resources :factions, only: [:index, :show]
  resources :lords, only: [:index, :show]

  root "games#index"
end
