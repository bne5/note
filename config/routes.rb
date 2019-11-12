Rails.application.routes.draw do
  root 'static_stickys#home'

  get '/about', to: 'static_stickys#about'
  resources :stickys
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
