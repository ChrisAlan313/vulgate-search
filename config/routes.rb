Rails.application.routes.draw do
  get '/verses/index'
  get '/verses/:id', to: 'verses#show'
  get '/books', to: 'books#index'
  get '/books/:abbreviation', to: 'books#show', as: 'book'
end
