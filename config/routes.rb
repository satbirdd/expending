Rails.application.routes.draw do
  resources :items

  resources :categories

  root "items#index"
end
