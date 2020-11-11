Rails.application.routes.draw do
  get 'bookings/show'
  get 'bookings/new'
  get 'bookings/edit'
  get 'bookings/update'
  get 'hobbies/index'
  get 'hobbies/show'
  get 'hobbies/find'
  get 'hobbies/new'
  get 'hobbies/create'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/dashboard'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :hobbies, only: [ :index, :show, :new, :create ]
end
