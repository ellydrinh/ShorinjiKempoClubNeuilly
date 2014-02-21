ShorinjiKempoClubNeuilly::Application.routes.draw do

  resources :users

  root :to => 'pages#home', :via => [:get, :post]
  match '/shorinjikempo', :to => 'pages#sk', :via => [:get, :post]
  match '/association', :to => 'pages#asso', :via => [:get, :post]
  match '/presentation', :to => 'pages#asso1', :via => [:get, :post]
  match '/activites', :to => 'pages#asso2', :via => [:get, :post]
  match '/historique', :to => 'pages#sk1', :via => [:get, :post]
  match '/caracteristiques', :to => 'pages#sk2', :via => [:get, :post]
  match '/techniques', :to => 'pages#sk3', :via => [:get, :post]
  match '/medias', :to => 'pages#media', :via => [:get, :post]
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match '/articles', :to => 'pages#articles', :via => [:get, :post]
  match 'contact' => 'contact#create', :via => :post
  #get "pages/home"
  #get "pages/asso"
  #get "pages/asso1"
  #get "pages/asso2"
  #get "pages/sk"
  #get "pages/sk1"
  #get "pages/sk2"
  #get "pages/manif"
  #get "pages/media"
  #get "pages/contact"

  

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
