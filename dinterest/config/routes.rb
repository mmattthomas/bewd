Rails.application.routes.draw do
  get '/' => 'dins#index'
  
  post '/new_post' => 'dins#create'
  
  get '/posts/:id' => 'dins#show'
end
