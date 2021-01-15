Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]  #do
#    resources :fishes, only: [:index]
#  end
  resources :fishes , only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:index, :new, :create, :edit, :update]
  end
end
