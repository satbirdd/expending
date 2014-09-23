Rails.application.routes.draw do
  resources :items

  resources :categories

  root "items#new"
end
