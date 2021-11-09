Rails.application.routes.draw do
  # resources :restaurants

  # CREATE - 2 step process
    # new - to get data from the user (form)
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
    # create - to actually create
  post 'restaurants', to: 'restaurants#create'

  # UPDATE - 2 step process
    # edit - to get data from the user (form)
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
    # update - to actually update the restaurant
  patch 'restaurants/:id', to: 'restaurants#update'

  # READ ALL - INDEX
  get 'restaurants', to: 'restaurants#index'
  # READ ONE - SHOW
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # DELETE
  delete 'restaurants/:id', to: 'restaurants#destroy'
end
