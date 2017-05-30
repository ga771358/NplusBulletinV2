Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login' => 'user#login'
  post 'verify' => 'user#verify'
  resources :secret,:user
 
end
