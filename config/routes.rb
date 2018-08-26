Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'user/omniauth_callbacks'
  }
  root 'products#index'
  resources :products
  resources :conversations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/products/:id/complete" => "products#complete"
  get "/home" => "home#index"
  get '/home/main' => "home#main"
  get '/products/make_true/:id' => "products#make_true"
end 
