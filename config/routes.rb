Rails.application.routes.draw do
 
  # config/routes.rb
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/my_profile/:user_id', to: 'profiles#my_profile'
      resources :profiles
      resources :rates
      
    end
  end
end