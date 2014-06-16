Rails.application.routes.draw do

  get '/' => 'restaurants#index'
  post '/post_rating' => 'ratings#create'

  get '/restaurants/:id' => 'restaurants#show'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/logout' => 'sessions#destroy'
  get '/login'	=> 'sessions#new'
  post '/login' => 'sessions#create'

end
