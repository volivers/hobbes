Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :users, except: %i[index new create destroy] do
    member do
      get :dashboard, :hobbies, :deck, :requests, :skillset
    end
    resources :skillset
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :hobbies, only: [ :index, :show, :new, :create ]
  resources :bookings, only: [ :index, :show, :new, :create ]
end
