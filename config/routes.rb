Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists do
    resources :albums
  end

  resources :albums do
    resources :shows
  end

  root "artists#index"
end
