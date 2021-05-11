Rails.application.routes.draw do
  devise_for :users
  root to: 'furimas#index'
  resources :furimas, only: [:new, :create, :show, :edit, :update, :destroy] do
  end
  resources :furimas do
    resources :orders, only: [:index]
  end
end
