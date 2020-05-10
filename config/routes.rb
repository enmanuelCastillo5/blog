Rails.application.routes.draw do
  get 'registration/new'
  get 'registration', to: 'registration#new', as: :registration
  post 'registration', to: 'registration#create'
  resources :comments
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
