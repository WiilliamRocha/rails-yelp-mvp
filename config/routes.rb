Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

      resources :restaurants do
        resources :reviews, only: [:index, :new, :create]
      end
      resources :reviews, only: [:show, :edit, :update, :destroy]

      # see all restaurants

    get 'restaurants', to: 'restaurants#index'

    # create a restaurant
    get 'restaurants/new', to: 'restaurants#new'
    post 'restaurants', to: 'restaurants#create', as: :restaurant_create

    # see one restaurant
    get 'restaurants/:id', to: 'restaurants#show', as: :restaurant_show

    # update a restaurant
    get 'restaurants/:id/edit', to: 'restaurants#edit', as: :review_restaurant
    patch 'restaurants/:id', to: 'restaurants#update'#
    # delete a restaurant
    delete 'restaurants/:id', to: 'restaurants#destroy'

  end
