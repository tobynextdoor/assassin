Rails.application.routes.draw do
  root :to => 'application#index'
  get 'about' => 'application#about'
  get 'terms' => 'application#terms'
  get 'privacy' => 'application#privacy'

  get 'game/create' => 'game#create'
  post 'game/create' => 'game#do_create'

  get 'game/:id/admin/:password/overview' => 'game#overview'
  post 'game/:id/admin/:password/invite' => 'game#invite'
  post 'game/:id/admin/:password/invites' => 'game#invites'
  get 'game/:id/admin/:password/start' => 'game#start'

  get 'game/join' => 'game#join_get_id'
  get 'game/:id/join' => 'game#join_form'
  post 'game/:id/join' => 'game#join'

  get 'game/:id/user/:user_id' => 'game#user'
  post 'game/:id/user/:user_id/kill_target' => 'game#kill_target'
end

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
