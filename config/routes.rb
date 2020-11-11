Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, except: %i[index new create destroy] do
    collection do
      patch "update_fields", to: "users#update_fields"
      get :hobbies, :deck, :requests, :skillset, :profile, :manage
    end
    resources :skills
  end
  # TODO DASHBOARD ROUTES

  resources :hobbies, only: [ :index, :show, :new, :create ]
end
