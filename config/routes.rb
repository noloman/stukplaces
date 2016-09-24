Rails.application.routes.draw {
  devise_for :users, controllers: { registrations: 'registrations' }
  get 'pages/home'
  root 'pages#home'
  resources :places
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
}
