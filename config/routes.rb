Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :show, :update]
        post '/login', to: 'users#login'
        get '/profile', to: 'users#profile'
        post '/signup', to: 'users#create'
        get '/horoscope/:sign', to: 'users#horoscope'
        resources :logs, only: [:create, :show, :update]

      end
    end

end
