Rails.application.routes.draw do
  root to: 'search_tweets#index'

  resources :search_tweets, only: [:index]
end
