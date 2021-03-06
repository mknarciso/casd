Rails.application.routes.draw do
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
  devise_for :users
  resources :users, only: :index
  root 'pages#home'
  get 'pages/home' => 'pages#home'
  get 'pages/dashboard' => 'pages#dashboard'
  
  get 'candidatos/selection' => 'candidatos#selection'
  post 'candidatos/selection' => 'candidatos#filter'
  get 'entrevistas/aprovar' => 'entrevistas#aprovar'
  
  get 'entrevistas/criteria_selection' => 'entrevistas#criteria_selection'
  post 'entrevistas/criteria_selection' => 'entrevistas#criteria_filter'
  
  resources :candidatos do
    collection { post :import }
    collection { get :addfile }
  end
  
  get 'entrevistas/selection' => 'entrevistas#selection'
  post 'entrevistas/selection' => 'entrevistas#filter'
  resources :entrevistas do
    collection { post :import }
    collection { get :addfile }
  end
  
  get 'formulario/:key' => 'pesquisas#matchKey'
  get 'pesquisas/enviar' => 'pesquisas#enviarForms'
  
  get 'pesquisas/selection' => 'pesquisas#selection'
  post 'pesquisas/selection' => 'pesquisas#filter'
  resources :pesquisas do
    collection { post :import }
    collection { get :addfile }
  end
  
  resources :candidatos
  # /candidatos_pdfexport
  get 'candidatos_pdfexport' => 'candidatos#pdfexport'
  
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
