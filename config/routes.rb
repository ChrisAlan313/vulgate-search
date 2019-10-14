Rails.application.routes.draw do
  get 'verses/index'
  get '/verses/:id', to: 'verses#show'
  get '/verses/:first/:last', to: 'verses#show_range'
end
