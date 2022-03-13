Rails.application.routes.draw do
  namespace :api do
    get 'likes/index'
    get 'likes/create'
    get 'likes/destroy'
  end
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "posts#index"
  namespace :api, { format: 'json' } do
    resources :likes, only: [:index, :create, :destroy]
  end
end
