Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controller: {
    session: "users/session",
    registerations: "users/registerations"
  }
  resources :posts
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
end
