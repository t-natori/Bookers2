Rails.application.routes.draw do

  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users
  
  
  resources :books, only: [:index, :show, :edit, :create]
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  patch 'books/:id' => 'books#update', as: 'update_book'

  resources :users, only: [:show, :edit, :index, :update]
  patch 'userd/:id' => 'users#update', as: 'update_user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
