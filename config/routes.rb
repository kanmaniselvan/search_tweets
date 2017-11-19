Rails.application.routes.draw do
  resources :search_tweets, only: [:index]
end
