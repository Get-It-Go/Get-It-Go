Rails.application.routes.draw do
  root 'products#index'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/products/:id/complete" => "products#complete"
  get "/home" => "home#index"
end
