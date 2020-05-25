Rails.application.routes.draw do
  get 'signin', to: 'session#new', as: :signin
  post 'signin', to: 'session#create'
  delete 'signout', to: 'session#destroy', as: :signout

  get 'registration', to: 'registration#new', as: :registration
  post 'registration', to: 'registration#create'
  resources :comments
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
end
