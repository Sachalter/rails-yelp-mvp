Rails.application.routes.draw do
  # see the list of restaurant
  # see a restaurant
  # add a new resto
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
