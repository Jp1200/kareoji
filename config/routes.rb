Rails.application.routes.draw do
  get '/test', to: 'test#test'
  get '/emoji', to: 'test#emoji_test'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
