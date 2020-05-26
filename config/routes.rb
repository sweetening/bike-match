Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/bikes/:id/edit", to: "bikes#edit", as: :edit_bike
  patch "/bikes/:id", to: "bikes#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
