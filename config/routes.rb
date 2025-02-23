Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources "places"

  get("/places", {:controller => "places", :action => "index"})
  get("/places/new", :controller => "places", :action => "new")
  get("/places/:id", :controller => "places", :action => "show")
  get("/places", :controller => "places", :action => "create")

  resources "entries"
end
