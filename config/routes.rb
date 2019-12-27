Rails.application.routes.draw do

  root 'pages#home'

  get '/dashboard', to: 'users#dashboard'
  get '/users/:id', to: 'users#show'

  resources :gigs

  post '/users/edit', to: 'users#update'


  devise_for :users,
                       path: '',
                       path_names: {sign_up: 'register', sign_in: 'login', edit: 'profile', sign_out: 'logout'},
                       controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}
end
