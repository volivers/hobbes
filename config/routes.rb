Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, except: %i[index new create] do
    member do
      get :dashboard, :hobbies, :deck, :requests, :skillset
    end
    resources :skills
  end
  # TODO DASHBOARD ROUTES
end
