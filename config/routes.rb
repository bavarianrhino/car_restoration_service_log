Rails.application.routes.draw do
  resources :vendors
  resources :vehicle_service_parts
  resources :parts
  resources :services
  resources :vehicles
  resources :owners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
