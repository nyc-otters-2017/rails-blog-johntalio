Rails.application.routes.draw do
  get 'posts' => 'posts#index'
  get 'posts' => 'posts#new'
  get 'posts/:id' => 'posts#show'
end
