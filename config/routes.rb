Rails.application.routes.draw do
  resources :interpreter_details
  resources :addresses
  devise_for :admins, path: 'admins', controllers: {
    sessions: 'admins/sessions'
  }
  devise_for :clients, path: 'clients', controllers: {
    sessions: 'clients/sessions'
  }
  devise_for :interpreters, path: 'interpreters', controllers: {
    sessions: 'interpreters/sessions'
  }

  # devise_scope :interpreter do
  #   get 'interpreters/signout', to: 'interpreters/sessions#destroy', as: :interpreter_signout
  # end
  get "information", to: "addresses#new", as: "information"
  resources :interpreters
  resources :clients
  resources :admins

  root to: "homes#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
