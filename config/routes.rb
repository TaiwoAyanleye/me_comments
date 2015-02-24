Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/new'

  get 'comments/create'

  root to: 'comments#index'
  resources :comments, only: [:index, :create]
  get '/comments/new/(:parent_id)', to: 'comments#new', as: :new_comment
end
