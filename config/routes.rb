NdtAppV6::Application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    match '', to: 'websites#show', constraints: lambda { |r| r.subdomain.present? && r.subdomain != 'www' }
    root to: 'websites#index'
    #root to: 'static_pages#home'
    
    match '/signup',  to: 'users#new'
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
    
    resources :websites
    resources :events
    resources :emergency_groups
    resources :users
    
    resources :sessions, only: [:new, :create, :destroy]
    #resources :pharmacies, only: [:create, :destroy]
    
  end
  match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), 
                 constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
  match '', to: redirect("/#{I18n.default_locale}")
end
