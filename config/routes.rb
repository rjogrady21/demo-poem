Rails.application.routes.draw do
  resources :poems, only: [:show, :index]
  resources :poets, only: [:show, :index] do
    resources :poems, only: [:show, :index]
  end
  devise_for :users
  root to: 'pages#home'
  get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
