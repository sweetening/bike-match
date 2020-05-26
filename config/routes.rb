Rails.application.routes.draw do
  devise_for :users
  resources :bikes, only: [:new, :create]
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/bikes/new", to: "bikes#new", as: :new_bike
  # post "/bikes/", to: "bikes#create"
end
