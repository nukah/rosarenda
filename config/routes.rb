
Site::Application.routes.draw do
  root :to => 'main#index'
  match 'subscribe' => 'main#subscribe', :via => :post
  match 'unsubscribe/:code' => 'main#unsubscribe', :via => :get
  
  # This line mounts Refinery's routes at the root of your application.
  # This means, any requests to the root URL of your application will go to Refinery::PagesController#home.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Refinery relies on it being the default of "refinery"
  mount Refinery::Core::Engine, :at => '/'

  #match "subscribe/:email" => 'subscriber#subscrube', :via => :get, :as => :subscribe
  #match "unsubscribe/:email/:code" => 'subscriber#unsubscribe', :via => :get, :as => :unsubscribe
end