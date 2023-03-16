Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :customer do
  end
  # Defines the root path route ("/")
  # root "articles#index"
  #get 'customer/index', root: 'customer#index'
end
