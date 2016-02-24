Rails.application.routes.draw do
  get 'cadastros/concessao'

  get 'cadastros/renovacao'

  root 'sessions#new'
  
  get  'login'                     => 'sessions#new'
  post 'login'                     => 'sessions#create'
  
  delete 'logout'                  => 'sessions#destroy'

  get  'home'                      => 'home#home'
  get  'lockscreen'                => 'lock#lockscreen'
  post 'unlock'                    => 'lock#unlock'
  
  get  'renovacao'                 => 'cadastros#renovacao'
  post 'renovacao_form'            => 'cadastros#renovacao_form'
  post 'ajax_lote'                 => 'cadastros#ajax_lote'
  post 'ajax_tipo_concessao_cemiterio' => 'cadastros#ajax_tipo_concessao_cemiterio'
  post 'novo_lote_modal'           => 'cadastros#novo_lote_modal'
  post 'ajax_pagamento'            => 'cadastros#ajax_pagamento'
  
  post 'ajax_renovacao_lote'  => 'cadastros#ajax_renovacao_lote'
  post 'ajax_buscar_requerente_cpf'  => 'cadastros#ajax_buscar_requerente_cpf'
  post 'ajax_buscar_concessionario_cpf'  => 'cadastros#ajax_buscar_concessionario_cpf'

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
