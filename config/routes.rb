Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :bikes do
   resources :bookings, only: [:new, :create, :edit, :update, :show]
 end
  resources :bookings, only: [:destroy]
  resources :dashboard, only: [:index]
end
