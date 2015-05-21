Rails.application.routes.draw do
  # Search
  post '/search', to: 'search#create'

  # rest search endpoint
  get '/search/:isbn', to: 'search#show'

  # App homepage
  root 'main#index'
end
