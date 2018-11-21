Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :users, only: [:index]
        post '/login', to: 'users#login'
        get '/profile', to: 'users#profile'
        post '/signup', to: 'users#create'
        resources :logs, only: [:index, :create]
      end
    end

end
