Rails.application.routes.draw do
  resources :beers
  resources :breweries do 
    resources :beers
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
