Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :bikes, only: [:new, :create, :index, :show, :edit, :update] do
    resources :booking, only: [:new, :create]
  end
end
