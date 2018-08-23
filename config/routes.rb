Rails.application.routes.draw do
  # Routes for the Restaurant resource:

  # CREATE
  get("/restaurants/new", { :controller => "restaurants", :action => "new_form" })
  post("/create_restaurant", { :controller => "restaurants", :action => "create_row" })

  # READ
  get("/restaurants", { :controller => "restaurants", :action => "index" })
  get("/restaurants/:id_to_display", { :controller => "restaurants", :action => "show" })

  # UPDATE
  get("/restaurants/:prefill_with_id/edit", { :controller => "restaurants", :action => "edit_form" })
  post("/update_restaurant/:id_to_modify", { :controller => "restaurants", :action => "update_row" })

  # DELETE
  get("/delete_restaurant/:id_to_remove", { :controller => "restaurants", :action => "destroy_row" })

  #------------------------------
  
  devise_for :users
  get("/users/:id_to_display",{:controller => "users", :action => "show"})
  
  # Routes to home page
  root "food#home_page"
  
  get("/input_choices",{:controller => "food", :action => "enter_choices"})
  get("/lunch_pick",{:controller => "food", :action => "input_output"})
  
  get("/random",{:controller => "google", :action => "search_form"})
  get("/random/results",{:controller => "google", :action => "search"})
end
