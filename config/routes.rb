Rails.application.routes.draw do


  resource :session, only: [:new, :create, :destroy]

  root 'shoes#index'
  get 'shoes/new' => 'shoes#new',  as: :new_shoe
  get 'shoes/:id' => 'shoes#show', as: :shoe
  post 'shoes/'    => 'shoes#create' 
  get  'shoes/:id/edit' => 'shoes#edit', as: :edit_shoe
  patch 'shoes/:id' => 'shoes#update'
  delete 'shoes/:id' => 'shoes#destroy'
  
  get 'images/'    => 'images#index'
  get 'images/new' => 'images#new',  as: :new_image
  get 'images/:id' => 'images#show', as: :image
  post 'images/'    => 'images#create' 
  get  'images/:id/edit' => 'images#edit', as: :edit_image
  patch 'images/:id' => 'images#update'
  delete 'images/:id' => 'images#destroy'
 resources :images

  get 'users/'    => 'users#index'
  get 'users/new' => 'users#new',  as: :new_user
  get 'users/:id' => 'users#show', as: :user
  post 'users/'    => 'users#create' 
  get  'users/:id/edit' => 'users#edit', as: :edit_user
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'

  # root 'static_pages#home'
  # match '/signup', to: 'user#new',  via: 'get'
  match '/home',  to: 'static_pages#home',  via: 'get'
  match '/help',  to: 'static_pages#help', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   

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
