Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :bikes, only: [:new, :create, :index, :show, :edit, :update] do
    resources :bookings, only: [:new, :create, :edit, :update, :show]
 end
  resources :bookings, only: [:delete]
  resources :dashboard, only: [:index]
end
