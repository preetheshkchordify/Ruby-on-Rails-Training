Rails.application.routes.draw do
  devise_for :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :customers do
  end
  resources :products do
  end
  resources :sales
  root 'products#index'
end
