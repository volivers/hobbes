Rails.application.routes.draw do
  devise_for :users
  root to: 'hobbies#index'

  # resources :users, except: %i[index new create destroy] do
      # member do
        # get :dashboard, :hobbies, :deck, :requests, :skillset
      # end
      # resources :skillset
    # end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, except: %i[index new create destroy] do
    collection do
      patch "update_fields", to: "users#update_fields"
      get :hobbies, :deck, :requests, :skillset, :profile, :manage
    end
    resources :skills
  end
  # TODO DASHBOARD ROUTES


  resources :hobbies, only: [ :index, :show, :new, :create ] do
    resources :bookings, only: [ :index, :show, :new, :create ]
  end

end
