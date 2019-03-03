Rails.application.routes.draw do

  get '/songs', to: 'songs#index'

  get '/songs/:id', to: 'songs#show'

  post '/songs', to: 'songs#create'

  delete '/songs/:id', to: 'songs#delete'

  put '/songs/:id', to: 'songs#update'

end
