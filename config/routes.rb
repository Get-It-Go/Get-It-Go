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
<<<<<<< HEAD
  get '/home/main' => "home#main"
=======
  
  
>>>>>>> ccb70ef808ad40b40f52b0035847e5a4364dca38
end
