Rails.application.routes.draw do
  # CODE IN SILO: route -> controller action -> view
  # verb '/path', to: 'controller#action', as: 'prefix'

  # READ ALL -> index
  get '/restaurants', to: 'restaurants#index', as: 'restaurants'

  # ADD A RESTAURANT: 2 actions -> (new / create)
  # DISPLAY THE FORM -> new
  get '/restaurants/new', to: 'restaurants#new', as: 'new_restaurant'

  # RECEIVE THE FORM -> create
  post '/restaurants', to: 'restaurants#create'

  # CHANGE A RESTAURANT: 2 actions -> (edit / update)

  # DISPLAY THE FORM -> edit
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'

  # RECEIVE THE FORM -> update
  patch '/restaurants/:id', to: 'restaurants#update'

  # READ ONE -> show
  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # DELETE RESTAURANT -> destroy
  delete '/restaurants/:id', to: 'restaurants#destroy'
end
