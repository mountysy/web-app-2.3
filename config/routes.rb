Rails.application.routes.draw do
  get("/dice", {:controller => "dice", :action => "index"})
  get("/tacos", {:controller => "tacos", :action => "index"})
  get("/cards", {:controller => "cards", :action => "index"})
  get("/bitcoins", {:controller => "bitcoins", :action => "index"})

  resources "companies"
  # get("/companies", {:controller => "companies", :action => "index"})
  resources "contacts"
  # get("/contacts", {:controller => "contacts", :action => "index"})

  resources "users"
  resources "sessions"

  get("/login", {:controller => "sessions", :action => "new"})
  get("/logout", {:controller => "sessions", :action => "destroy"})
  
  resources "posts"
  # get("/posts", {:controller => "posts", :action => "index"})
end
