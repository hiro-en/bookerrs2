Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get "/home/about" => 'homes#about', as: 'about'
  resource :books, only: [:create, :show, :index, :destroy, :edit, :update]
  resource :users, only: [:index, :show, :edit, :update]
end
