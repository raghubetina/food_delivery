Rails.application.routes.draw do
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
