Rails.application.routes.draw do
  resources :categories do
    resources :items
  end

  resources :periodicities do
    resources :items
  end

  root to: "categories#index"
  resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
