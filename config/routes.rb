Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  namespace :admin do
    resources :series, except: [:show]
    resources :categories, except: [:show]
    resources :games, except: [:show]
    resources :levels, except: [:show]
    resources :resources, except: [:show]
    resources :skips, except: [:show]
    resources :tricks, except: [:show]
    resources :guides, except: [:show]
    resources :game_tricks, except: [:show]
  end

end
