Rails.application.routes.draw do
    root :to => "application#fallback_index_html"

    namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :show, :update]
        post '/login', to: 'users#login'
        get '/profile', to: 'users#profile'
        post '/signup', to: 'users#create'
        get '/horoscope/:sign', to: 'users#horoscope'
        resources :logs
        resources :timed_logs, only: [:index, :create, :show]
      end
    end
    
    get ":default" => "application#fallback_index_html"
end
