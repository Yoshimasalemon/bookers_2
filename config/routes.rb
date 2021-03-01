Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
 get "/home/about" => "homes#about"

 resources :books do
 resource :favorites, only: [:create, :destroy]
 resources :book_comments
 end

 resources :users

end

