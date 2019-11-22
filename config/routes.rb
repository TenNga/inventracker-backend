Rails.application.routes.draw do
  resources :products
  resources :folders
  
  namespace :api do
    namespace :v1 do
      resources :users
      post "/login", to: "auth#login"
    end
  end

  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
