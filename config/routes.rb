Rails.application.routes.draw do
  resources :products do
    resources :pictures, only: [:create]
  end
  resources :products
  devise_for :users
  root 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
