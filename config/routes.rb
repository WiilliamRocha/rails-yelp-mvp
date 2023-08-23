Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # see all restaurants
  get 'restaurants', to: 'restaurants#index'

  # create a restaurant
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'

  # see one restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # update a restaurant
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch 'restaurants/:id', to: 'restaurants#update'

  # delete a restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy'

end
