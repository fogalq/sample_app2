Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/show'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get "/", to: "home#index"
    get "/home", to: "home#index"
    get "/about", to: "home#about"
    get "/contact", to: "home#contact"
    #Sign up Session
    get "/signup", to: "users#new"
    post "/signup", to: "users#create"
    #Log In Session
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
    resources :users
    get '/users', to: 'users#users'
end

