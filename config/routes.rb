Rails.application.routes.draw do

  root to: "home#index"

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"

  #------------------------------

  # Routes for the Specialization resource:

  # CREATE
  post("/insert_specialization", { :controller => "specializations", :action => "create" })
          
  # READ
  get("/specializations", { :controller => "specializations", :action => "index" })
  
  get("/specializations/:path_id", { :controller => "specializations", :action => "show" })
  
  # UPDATE
  
  post("/modify_specialization/:path_id", { :controller => "specializations", :action => "update" })
  
  # DELETE
  get("/delete_specialization/:path_id", { :controller => "specializations", :action => "destroy" })

  #------------------------------

  # Routes for the City resource:

  # CREATE
  post("/insert_city", { :controller => "cities", :action => "create" })
          
  # READ
  get("/cities", { :controller => "cities", :action => "index" })
  
  get("/cities/:path_id", { :controller => "cities", :action => "show" })
  
  # UPDATE
  
  post("/modify_city/:path_id", { :controller => "cities", :action => "update" })
  
  # DELETE
  get("/delete_city/:path_id", { :controller => "cities", :action => "destroy" })

  #------------------------------

  # Routes for the Style resource:

  # CREATE
  post("/insert_style", { :controller => "styles", :action => "create" })
          
  # READ
  get("/styles", { :controller => "styles", :action => "index" })
  
  get("/styles/:path_id", { :controller => "styles", :action => "show" })
  
  # UPDATE
  
  post("/modify_style/:path_id", { :controller => "styles", :action => "update" })
  
  # DELETE
  get("/delete_style/:path_id", { :controller => "styles", :action => "destroy" })

  #------------------------------

  # Routes for the Artist resource:

  # CREATE
  post("/insert_artist", { :controller => "artists", :action => "create" })
          
  # READ
  get("/artists", { :controller => "artists", :action => "index" })
  
  get("/artists/:path_id", { :controller => "artists", :action => "show" })
  
  # UPDATE
  
  post("/modify_artist/:path_id", { :controller => "artists", :action => "update" })
  
  # DELETE
  get("/delete_artist/:path_id", { :controller => "artists", :action => "destroy" })

  #------------------------------
  
  # Routes for the Studio resource:

  # CREATE
  post("/insert_studio", { :controller => "studios", :action => "create" })
          
  # READ
  get("/studios", { :controller => "studios", :action => "index" })
  
  get("/studios/:path_id", { :controller => "studios", :action => "show" })
  
  # UPDATE
  
  post("/modify_studio/:path_id", { :controller => "studios", :action => "update" })
  
  # DELETE
  get("/delete_studio/:path_id", { :controller => "studios", :action => "destroy" })

  #------------------------------

  devise_for :users


  
end
