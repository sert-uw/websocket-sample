Rails.application.routes.draw do
  resources :comments
  devise_for :users
  root 'chats#index'
end
