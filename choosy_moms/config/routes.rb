Rails.application.routes.draw do

  get '/gifs' => 'gifs#image_list'
  post 'add_image' => 'gifs#create'

end
