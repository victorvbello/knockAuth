Rails.application.routes.draw do
  post 'user/login' => 'user_token#create'
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
