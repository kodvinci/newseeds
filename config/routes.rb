Seeds::Application.routes.draw do
  devise_for :admins

 # get "home/index"

  #get "users/index"

  #get "users/show"

  devise_for :users
  resources :users, :has_one => :lender #:only => [:index, :show]
 
  match "lender", :controller =>"lenders", :action =>"show", :via => :get;

  resources :lenders

#  authenticated :user do
#    root to: 'users#show'
#  end
  
  root :to => "home#index"

  resources :home
#  resources :purchases

  %w(credit express express_complete complete).each do |action|
    match "purchase/#{action}" => "purchase##{action}"
  end

#  match "purchase_credit", :controller =>"purchase", :action =>"credit", :via => :get;
#  match "purchase_express", :controller =>"purchase", :action =>"express", :via => :get;
#  match "purchase_express_complete", :controller =>"purchase", :action =>"express_complete", :via => :get;
#  match "purchase_complete", :controller =>"purchase", :action =>"complete", :via => :get;
  
#  resources :purchase
  
  resources :borrowers

  resources :transactions

  resources :badges

  resources :badge_lists

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
