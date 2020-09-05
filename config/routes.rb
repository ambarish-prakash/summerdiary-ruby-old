Rails.application.routes.draw do
  get 'lobby/index'
  get 'login/index'
  resources :user
  
  root 'login#index'
end
