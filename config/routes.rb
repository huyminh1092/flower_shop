Rails.application.routes.draw do
 
  get '/productCategory/:id', to: 'homes#productCategory', as: 'productCategory'
  resources :homes
  get  "about"  => "homes#about"
  get  "gallery" => "homes#findall"
 
  get  "register"    => "users#new"
  post "register" => "users#create"
  get  "login"   => "sessions#new"
  post "login"   => "sessions#create"
  get  "logout"   => "sessions#destroy"


 
 



  

  # get  "admin/category" => "categories#new"
  # post "admin/category" => "categories#create"

  # get "admin/category/list" => "categories#show"
  

  resources :users
  
  namespace :admin do
  resources :categories
  end

  namespace :admin do
  resources :products
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
