Rails.application.routes.draw do
  get 'homes/show'

  root to: 'homes#show', via: :get
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resource :dashboard, only: [:show] #singleton resourse
  resources :shouts, only: [:create, :show]

end
