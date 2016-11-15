Rails.application.routes.draw do
  devise_for :users
  root "artists#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists do
    resources :albums
  end

  resources :albums do
    resources :shows
  end

  resources :showlists 

  resources :shows do
    member do
      post 'add_to_showlist'
      delete 'delete_from_showlist'
    end
  end

end
