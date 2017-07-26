Rails.application.routes.draw do
  resources :saver_ads
  resources :categories
  resources :ad_categories
  resources :ads
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
