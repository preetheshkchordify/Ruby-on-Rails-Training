Rails.application.routes.draw do
  resources :dashboard do 
    collection do 
      get 'dashboard', to: 'dashboard#dashboard'
      get 'tables', to: 'dashboard#tables'
      get 'billing', to: 'dashboard#billing'
      get 'virtual_reality', to: 'dashboard#virtual_reality'
      get 'notification', to: 'dashboard#notification'
      get 'rtl', to: 'dashboard#rtl'
      get 'profile', to: 'profile'
      get 'sign_in', to: 'sign_in'
      get 'sign_up', to: 'sign_up'

    end
  end
  # end
  # get 'dashboard/index', root: 'dashboard#index'
  # get 'dashboard/dashboard', root: 'dashboard#dashboard'
  # get 'dashboard/tables', root: 'dashboard#tables'
  # get 'dashboard/billing', root: 'dashboard#billing'
  # get 'dashboard/virtual_reality', root: ''
  # get 'dashboard/rtl'
  # get 'dashboard/profile'
  # get 'dashboard/sign_in'
  # get 'dashboard/sign_up'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
