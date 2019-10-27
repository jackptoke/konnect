Rails.application.routes.draw do
  devise_for :admins, path: 'admins', controllers: {
    sessions: 'admins/sessions'
  }
  devise_for :clients, path: 'clients', controllers: {
    sessions: 'clients/sessions'
  }
  devise_for :interpreters, path: 'interpreters', controllers: {
    sessions: 'interpreters/sessions'
  }
  root to: "homes#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
