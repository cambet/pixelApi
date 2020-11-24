Rails.application.routes.draw do
  resources :pixels
  
  devise_for :providers, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'providers/sessions',
    registrations: 'providers/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
