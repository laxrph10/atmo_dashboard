Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'sessions#new'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout
  

  get '/auth/:provider/callback', to: 'brands#index'

  get '/soundcloud/new' => 'soundcloud#new', as: :soundcloud_login
  get '/soundcloud/show' => 'soundcloud#show', as: :soundcloud_redirect

  get "/oauth/callback" do
    response = Instagram.get_access_token(params[:code], :redirect_uri => "http://localhost:3000/oauth/callback")
    session[:access_token] = response.access_token
    redirect "/nav"
  end
  # Example of named route that can be invoked with purchase_url(id: product.id)
  get 'pending_users/new' => 'pending_users#new', as: :new_pending_user
  post 'pending_users/create' => 'pending_users#create', as: :create_pending_user
  get 'brands/new' => 'brands#new', as: :new_brand
  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :brands

  get '/brands/:id/feed' => 'brands#brand_feed', as: :brands_feed
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
