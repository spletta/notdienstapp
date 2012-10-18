        NdtAppV6::Application.routes.draw do
          scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
            root to: 'static_pages#home'

            match '/signup',  to: 'users#new'
            match '/signin',  to: 'sessions#new'
            match '/signout', to: 'sessions#destroy', via: :delete

            match '/welcome', to: 'static_pages#welcome'
            match '/dashboard', to: 'static_pages#dashboard'
            match '/referrals', to: 'static_pages#referrals'
    
            match '/calendar', to: 'static_pages#calendar'
            match '/planner', to: 'static_pages#planner'
            match '/customer_service', to: 'static_pages#customer_service'
            match '/websites', to: 'static_pages#websites'
            match '/manage', to: 'static_pages#manage'
            match '/emergency_groups', to: 'static_pages#emergency_groups'
            #match '/pharmacies_static', to: 'static_pages#pharmacies_static'
    
            match '/help',    to: 'static_pages#help'
            match '/about',   to: 'static_pages#about'
            match '/contact', to: 'static_pages#contact'

            resources :pharmacies do
              post :withdraw, on: :member
              post :attend, on: :member
            end
            
            resources :users
            
            resources :sessions, only: [:new, :create, :destroy]
            #resources :pharmacies, only: [:create, :destroy]
          end
          match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), 
                         constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
          match '', to: redirect("/#{I18n.default_locale}")
  
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
