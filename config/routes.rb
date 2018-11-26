Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :show, :update]
        post '/login', to: 'users#login'
        get '/profile', to: 'users#profile'
        post '/signup', to: 'users#create'
        resources :logs, only: [:create, :update]
      end
    end

end
