Rails.application.routes.draw do
  resources :navs
  resources :posts
  root "products#index"
 
  resources :products
  get "frontend" => "frontend#index"
end
