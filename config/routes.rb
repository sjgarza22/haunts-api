Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
      resources :haunts do
        resources :haunts_locations, only: [:show]
      end

      resources :haunts do
        resources :ratings, only: [:index]
      end

      resources :ratings

      resources :users, only: [:create]
      post '/login', to: 'auth#create'

      resources :haunts, only: [:create]
      post '/search', to: 'search#create'
end
