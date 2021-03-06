Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/show'
  get 'articles/new'
  get 'articles/create'
  get 'articles/destroy'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/create'
  get 'restaurants/destroy'

  # devise_for :users
  get 'islands/index'
  get 'islands/show'
  root to: 'pages#home'

  devise_for :users

  # resources :teachers, only: [:show, :index] do
  resources :articles, only: [:new, :create, :show, :edit, :destroy]
  #  member do
  #    resources :evaluations, only: [:index]
  #  end
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
