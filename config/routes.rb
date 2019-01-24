Rails.application.routes.draw do
    resources :vendors
    # resources :vehicle_service_parts
    resources :parts
    resources :services
    resources :vehicles
    resources :owners, except: [:index]


    get '/login', to: 'sessions#new', as: 'login'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy', as: 'logout'

    get '/signup', to: 'owners#new', as: 'signup'
    post '/owners', to: 'owners#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
