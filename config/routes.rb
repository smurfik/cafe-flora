Rails.application.routes.draw do

  get  "/"                         , to: "menus#index"        , as: :all_menus
  # get  "/"                         , to: "menu_sections#index", as: :all_sections
  # BELOW :id is menu_id
  get  "/:menu_id"                       , to: "menus#show"         , as: :show_menu
  get  "/:menu_id/menu_sections/new"     , to: "menu_sections#new"  , as: :new_section
  get  "/:menu_id/preview"               , to: "menus#preview"      , as: :preview_menu
  get  "/:menu_id/menu_sections/:sec_id" , to: "menu_sections#show" , as: :show_section

  # will need to update these routes forms to work with new views
  post "/:menu_id"                       , to: "menu_sections#add"  , as: :add_section
  post "/:menu_id/menu_sections/:sec_id" , to: "menu_items#add"     , as: :add_item

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
