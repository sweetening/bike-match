Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :bikes, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resources :bookings, only: [:show]
  end
end
