Rails.application.routes.draw do
  get '/search/:isbn', to: 'search#index'
end
