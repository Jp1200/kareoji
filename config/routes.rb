Rails.application.routes.draw do
  resources :users
  resources :playlists
  resources :music_videos
  resources :songs
  resources :artists


  get '/', to: 'application#home', as: 'home'
  get '/log_in', to: 'users#log_in'
  post '/users/log_user_in', to: 'users#log_user_in'
  post '/logout', to: 'application#logout'


  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


