Rails.application.routes.draw do

  resources :products, only: [:index, :show] do
  	post :add_to_cart
  	post :remove_from_cart
  end

  resources :orders, only: [:index, :show] do
  	post :place, on: :collection
  	get :cart, on: :collection
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
