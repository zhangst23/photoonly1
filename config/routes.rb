Rails.application.routes.draw do
  get 'tags/:tag', to: 'posts#index', as: :tag

  resources :posts do
    resources :comments
  end

  resources :tags, only: [:index, :show]

  root 'posts#index'




end
