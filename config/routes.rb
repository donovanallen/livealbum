Rails.application.routes.draw do
  devise_for :users
  root "main#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists do
    resources :albums
  end

  resources :albums do
    resources :shows
  end

end
