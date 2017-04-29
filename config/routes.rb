Rails.application.routes.draw do
  # Routes for the Food_item resource:
  # CREATE
  get "/food_items/new", :controller => "food_items", :action => "new"
  post "/create_food_item", :controller => "food_items", :action => "create"

  # READ
  get "/food_items", :controller => "food_items", :action => "index"
  get "/food_items/:id", :controller => "food_items", :action => "show"

  # UPDATE
  get "/food_items/:id/edit", :controller => "food_items", :action => "edit"
  post "/update_food_item/:id", :controller => "food_items", :action => "update"

  # DELETE
  get "/delete_food_item/:id", :controller => "food_items", :action => "destroy"
  #------------------------------

  # Routes for the Menu resource:
  # CREATE
  get "/menus/new", :controller => "menus", :action => "new"
  post "/create_menu", :controller => "menus", :action => "create"

  # READ
  get "/menus", :controller => "menus", :action => "index"
  get "/menus/:id", :controller => "menus", :action => "show"

  # UPDATE
  get "/menus/:id/edit", :controller => "menus", :action => "edit"
  post "/update_menu/:id", :controller => "menus", :action => "update"

  # DELETE
  get "/delete_menu/:id", :controller => "menus", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
