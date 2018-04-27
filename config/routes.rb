Rails.application.routes.draw do
  get 'users/new'
  post 'users/new', to: 'users#create', as: 'create_user'

  get 'error', to: 'static_pages#error', as: 'user_creation_error'

  root 'static_pages#home'
  get '/users/:username', to: 'users#show', as: 'user'

end