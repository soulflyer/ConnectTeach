ActionController::Routing::Routes.draw do |map|
  map.resources :newsitems

  map.resources :tutors

  map.root :controller => 'pages', :action => 'show', :permalink => 'home'
  map.about 'about', :controller => 'pages', :action => 'show', :permalink => 'about'
  map.contact 'contact', :controller => 'pages', :action => 'show', :permalink => 'contact'
  map.courses 'courses', :controller => 'pages', :action => 'show', :permalink => 'courses'
  map.textilehelp 'textilehelp', :controller => 'pages', :action => 'show', :permalink => 'textilehelp'
  map.clientinfo 'clientinfo', :controller => 'pages', :action => 'show', :permalink => 'clientinfo'
  map.tutorinfo 'tutorinfo', :controller => 'pages', :action => 'show', :permalink => 'tutorinfo'
  map.corporate 'corporate', :controller => 'pages', :action => 'show', :permalink => 'corporate'
  map.adults 'adults', :controller => 'pages', :action => 'show', :permalink => 'adults'
  map.parents 'parents', :controller => 'pages', :action => 'show', :permalink => 'parents'
  map.students 'students', :controller => 'pages', :action => 'show', :permalink => 'students'
  
  map.resources :pages
  
  map.static 'static/:permalink', :controller => 'pages', :action => 'show'
  map.static_edit 'static/:permalink/edit', :controller => 'pages', :action => 'edit'
  
  map.users_email 'users/email', :controller => 'clearance/users', :action => 'email'
  map.error 'error', :controller => 'pages', :action => 'error'
  

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
