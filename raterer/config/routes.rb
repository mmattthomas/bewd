Rails.application.routes.draw do
  resources :ratings

  get '/' => 'reviews#index'
  post '/add' => 'reviews#add'
end
