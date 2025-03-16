Rails.application.routes.draw do
  get "user/index"
  get "user/new"
  get "user/create"
  get "user/show"
  get "user/edit"
  get "user/update"
  get "user/destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "home#index"

  # Category routes
  get "/categories", to: "category#index"
  get "/categories/new", to: "category#new"
  post "/categories", to: "category#create"
  get "/categories/:id", to: "category#show"
  get "/categories/:id/edit", to: "category#edit"
  put "/categories/:id", to: "category#update"
  delete "/categories/:id", to: "category#destroy"

  # Favourite routes
  get "/favourites", to: "favourite#index"
  get "/favourites/new", to: "favourite#new"
  post "/favourites", to: "favourite#create"
  get "/favourites/:id", to: "favourite#show"
  get "/favourites/:id/edit", to: "favourite#edit"
  put "/favourites/:id", to: "favourite#update"
  delete "/favourites/:id", to: "favourite#destroy"

  # Listing routes
  get "/listings", to: "listing#index"
  get "/listings/new", to: "listing#new"
  post "/listings", to: "listing#create"
  get "/listings/:id", to: "listing#show"
  get "/listings/:id/edit", to: "listing#edit"
  put "/listings/:id", to: "listing#update"
  delete "/listings/:id", to: "listing#destroy"

  # Message routes
  get "/messages", to: "message#index"
  get "/messages/new", to: "message#new"
  post "/messages", to: "message#create"
  get "/messages/:id", to: "message#show"
  get "/messages/:id/edit", to: "message#edit"
  put "/messages/:id", to: "message#update"
  delete "/messages/:id", to: "message#destroy"

  # Order routes
  get "/orders", to: "order#index"
  get "/orders/new", to: "order#new"
  post "/orders", to: "order#create"
  get "/orders/:id", to: "order#show"
  get "/orders/:id/edit", to: "order#edit"
  put "/orders/:id", to: "order#update"
  delete "/orders/:id", to: "order#destroy"

   # Review routes
   get "/reviews", to: "review#index"
   get "/reviews/new", to: "review#new"
   post "/reviews", to: "review#create"
   get "/reviews/:id", to: "review#show"
   get "/reviews/:id/edit", to: "review#edit"
   put "/reviews/:id", to: "review#update"
   delete "/reviews/:id", to: "review#destroy"

   # ReviewResponses routes
   get "/review_responses", to: "review_response#index"
   get "/review_responses/new", to: "review_response#new"
   post "/review_responses", to: "review_response#create"
   get "/review_responses/:id", to: "review_response#show"
   get "/review_responses/:id/edit", to: "review_response#edit"
   put "/review_responses/:id", to: "review_response#update"
   delete "/review_responses/:id", to: "review_response#destroy"

  # User routes
  get "/users", to: "user#index"
  get "/users/new", to: "user#new"
  post "/users", to: "user#create"
  get "/users/:id", to: "user#show"
  get "/users/:id/edit", to: "user#edit"
  put "/users/:id", to: "user#update"
  delete "/users/:id", to: "user#destroy"
end
