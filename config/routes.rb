Rails.application.routes.draw do
  get 'videos/create'

  get 'videos/destroy'

  get 'photos/create'

  get 'photos/destroy'

  devise_for :users

  root to: "pages#home"
  get 'damien_dashboard', to: "pages#dashboard"
  resources :messages, only: [ :create, :destroy ] do
    post '/check', to: 'messages#check!'
    post '/uncheck', to: 'messages#uncheck!'
  end
  resources :photos, only: [ :create, :destroy ]
  resources :videos, only: [ :create, :destroy ]
end
