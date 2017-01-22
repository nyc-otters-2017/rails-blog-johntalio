Rails.application.routes.draw do
  root 'posts#index'
  resources :users

  get 'posts' => 'posts#index'
  get 'posts/new' => 'posts#new'
  post 'posts' => 'posts#create'
  get 'posts/:id' => 'posts#show'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
