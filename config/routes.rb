Rails.application.routes.draw do
  resources :users
  resources :playlists
  resources :music_videos
  resources :songs
  resources :artists


  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


