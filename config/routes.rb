Rails.application.routes.draw {
  resources :places
  resources :reviews
  devise_for :users, controllers: { registrations: 'registrations' }
  get 'pages/home'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
}
