Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :items, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: :create
    member do
      get 'filter'
    end
  end

  get 'orders/swap', to: 'orders#swap'
  resources :orders, only: [:edit, :update, :show] do
    resources :payments, only: [:new, :create]
  end


  resource :profile, only: [:show, :edit, :update] do
    get '/historic', to: "profiles#historic"
    get '/account_settings', to: "profiles#account_settings"
    resources :bookings, only: [:edit, :update, :destroy]
  end

  resource :dashboard, only: [:show] do
    get '/manager_items', to: "dashboards#manager_items"
    get '/stats', to: "dashboards#stats"
    get '/account_settings', to: "dashboards#account_settings"
    resources :items, only: [:edit, :update]
  end

  mount Attachinary::Engine => "/attachinary"

  root to: 'pages#home'

  get 'cart', to: 'carts#index'

  delete 'cart', to: 'carts#delete_all'
  resources :carts, only: [:new, :create, :destroy]

end
