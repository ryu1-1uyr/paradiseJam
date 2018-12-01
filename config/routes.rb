Rails.application.routes.draw do
  get '/register' => 'home#register'
  get '/login' => 'home#login'
  post '/login' => 'home#login'

  get '/mypage/:id' => 'home#test'

  get '/mypage/:id/getSomeParams' => "home#getSomeParams"

  resources :every_params
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
