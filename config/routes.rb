Rails.application.routes.draw do
  root to: 'homes#top'
  get "/home/about" => "homes#about"
  resources :books
  devise_for :users
  resources :users, only: [:index, :edit, :update, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
