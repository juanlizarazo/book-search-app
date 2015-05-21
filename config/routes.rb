Rails.application.routes.draw do
  # Search endpoint
  get '/search/:isbn', to: 'search#index'

  # App homepage
  root 'main#index'
end
