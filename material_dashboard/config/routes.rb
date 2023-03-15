Rails.application.routes.draw do
  get 'dashboard/index'
  root 'dashboard#index'
  # root 'dashboard/dashboard'
  # root 'dashboard/tables'
  # root 'dashboard/billing'
  # root 'dashboard/virtual_reality'
  # root 'dashboard/rtl'
  # root 'dashboard/profile'
  # root 'dashboard/sign_in'
  # root 'dashboard/sign_up'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
