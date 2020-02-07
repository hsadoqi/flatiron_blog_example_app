Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  root to: 'users#welcome'

  get '/users/:id/account', to: 'users#account', as: 'account'

end
