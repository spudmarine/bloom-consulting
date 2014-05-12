BloomConsulting::Application.routes.draw do

  root to: 'mains#show', :defaults => { id: "1" }

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'practiceareas', to: 'practiceareas#show', :defaults => { id: "1"}
  get 'careers', to: 'careers#show', :defaults => { id: "1"}
  get 'about', to: 'abouts#show', :defaults => { id: "1"}
  get 'team', to: 'teams#show', :defaults => { id: "1"}
  get 'contact', to: 'contacts#show', :defaults => { id: "1"}
  get 'sitemap.xml' => 'sitemap#index', as: 'sitemap', :defaults => { format: "xml" }

  resources :users
  resources :sessions
  resources :mains
  resources :posts, only: [:index]
  resources :careers
  resources :jobs
  resources :teams
  resources :contacts
  resources :insights
  resources :successes
  resources :events
  resources :carousels

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :posts
    resources :users
    resources :mains
    resources :pages
    resources :practiceareas
    resources :careers
    resources :jobs
    resources :teams
    resources :employees
    resources :abouts
    resources :contacts
    resources :insights
    resources :quotes
    resources :successes
    resources :events
    resources :carousels

  end

  get "/consulting", :to => redirect("/practiceareas")
  get "/marketing", :to => redirect("/practiceareas")
  get "/projectmanagement", :to => redirect("/practiceareas")
  get "/aboutBloom/companyOverview.html", :to => redirect("/about") 
  get "/aboutBloom/:all", :to => redirect("/team")
  get "/employees/:all", :to => redirect("/team")
  resources :employees
  get "/quotes/:all", :to => redirect("/about")
  resources :quotes
  get "/bloomServices/:all", :to => redirect("/practiceareas")
  get "/bloomPractices/:all", :to => redirect("/practiceareas")
  get "/contactBloom/:all", :to => redirect("/contact")
  get "/careersAtBloom/culture.html", :to => redirect("/about")
  get "/careersAtBloom/:all", :to => redirect("/careers")
  get "/whatsNewAtBloom/index.html", :to => redirect("/about")

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
