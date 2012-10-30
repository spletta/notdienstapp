NdtAppV6::Application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    match '', to: 'sessions#new', constraints: lambda { |r| r.subdomain.present? && r.subdomain != 'www' }
    #match '/signup', to: 'accounts#new', constraints: lambda { |r| r.subdomain.present? && r.subdomain != 'www' }
          
    # development      
    constraints(:host => /ndt.dev/) do
      root :to => 'accounts#new'
      match '/signup', :to => redirect {|params| "http://ndt.dev/#{params[:path]}"}
    end
    
    # production
    #constraints(:host => /notdienstapp.com/) do
      #match '/signup', :to => redirect {|params| "https://notdienstapp.com/#{params[:path]}"}
    #end
    
    root to: 'sessions#new'
    
    match '/signup',  to: 'accounts#new'
    match '/signin',  to: 'sessions#new'
    match '/signout', to: 'sessions#destroy', via: :delete

    match '/welcome', to: 'static_pages#welcome'
    match '/dashboard', to: 'static_pages#dashboard'
    match '/referrals', to: 'static_pages#referrals'

    match '/calendar', to: 'static_pages#calendar'
    match '/planner', to: 'static_pages#planner'
    match '/customer_service', to: 'static_pages#customer_service'
    match '/manage', to: 'static_pages#manage'

    match '/help',    to: 'static_pages#help'
    match '/about',   to: 'static_pages#about'
    match '/contact', to: 'static_pages#contact'

    resources :pharmacies do
      post :withdraw, on: :member
      post :attend, on: :member
    end
    
    resources :events #do
      #get :ipad, :on => :collection
      #match '/events/ipad', to: 'events#ipad'
    #end
    
    resources :emergency_groups
    resources :users
    
    resources :sessions, only: [:new, :create, :destroy]
    resources :accounts, only: [:index, :new, :create, :destroy]
    
  end
  match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), 
                 constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
  match '', to: redirect("/#{I18n.default_locale}")
end
