Rails.application.routes.draw do
  namespace :admin do
    get '/', to: 'dashboard#index'
  end
  get 'home/index'
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :series
    resources :categories
    resources :games
    resources :levels
    resources :resources
    resources :skips
    resources :tricks
    resources :guides
    resources :game_tricks
  end
end
