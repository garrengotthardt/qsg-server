Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # post '/login', to: 'auth#create'
      # get '/me', to: 'auth#show'

      resources :saver_ads
      resources :categories
      resources :ad_categories
      resources :ads
      resources :users
    end
  end
end
