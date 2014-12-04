Rails.application.routes.draw do
  devise_for :users
  # Routes for the Author resource:
  # CREATE
  get('/authors/new', { :controller => 'authors', :action => 'new' })
  get('/create_author', { :controller => 'authors', :action => 'create' })

  # READ
  get('/authors', { :controller => 'authors', :action => 'index' })
  get('/authors/:id', { :controller => 'authors', :action => 'show' })

  # UPDATE
  get('/authors/:id/edit', { :controller => 'authors', :action => 'edit' })
  get('/update_author/:id', { :controller => 'authors', :action => 'update' })

  # DELETE
  get('/delete_author/:id', { :controller => 'authors', :action => 'destroy' })
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get('/reviews/new', { :controller => 'reviews', :action => 'new' })
  get('/create_review', { :controller => 'reviews', :action => 'create' })

  # READ
  get('/reviews', { :controller => 'reviews', :action => 'index' })
  get('/reviews/:id', { :controller => 'reviews', :action => 'show' })

  # UPDATE
  get('/reviews/:id/edit', { :controller => 'reviews', :action => 'edit' })
  get('/update_review/:id', { :controller => 'reviews', :action => 'update' })

  # DELETE
  get('/delete_review/:id', { :controller => 'reviews', :action => 'destroy' })
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get('/categories/new', { :controller => 'categories', :action => 'new' })
  get('/create_category', { :controller => 'categories', :action => 'create' })

  # READ
  get('/categories', { :controller => 'categories', :action => 'index' })
  get('/categories/:id', { :controller => 'categories', :action => 'show' })

  # UPDATE
  get('/categories/:id/edit', { :controller => 'categories', :action => 'edit' })
  get('/update_category/:id', { :controller => 'categories', :action => 'update' })

  # DELETE
  get('/delete_category/:id', { :controller => 'categories', :action => 'destroy' })
  #------------------------------

  # Routes for the Book resource:
  # CREATE
  get('/books/new', { :controller => 'books', :action => 'new' })
  get('/create_book', { :controller => 'books', :action => 'create' })

  # READ
  get('/books', { :controller => 'books', :action => 'index' })
  get('/books/:id', { :controller => 'books', :action => 'show' })

  # UPDATE
  get('/books/:id/edit', { :controller => 'books', :action => 'edit' })
  get('/update_book/:id', { :controller => 'books', :action => 'update' })

  # DELETE
  get('/delete_book/:id', { :controller => 'books', :action => 'destroy' })
  #------------------------------

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
