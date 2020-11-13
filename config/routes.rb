Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
      resources :haunts do
        resources :haunts_locations, only: [:show, :update]
      end

      resources :ratings

      resources :users do
        resources :favortes
      end

      resources :users, only: [:create]
      post '/login', to: 'auth#create'
end
