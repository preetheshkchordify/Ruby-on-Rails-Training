Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  # get '/a', to: 'application#not_found'
  resources :clients
  get 'client_data/active', to: 'clients#active'
  resources :projects
  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :employes
    end
  end
end
