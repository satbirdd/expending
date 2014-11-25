Rails.application.routes.draw do
  resources :income_items

  resources :income_categories

  resources :items

  resources :categories

  root "items#new"
end
