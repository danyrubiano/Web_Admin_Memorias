Rails.application.routes.draw do
  
  devise_for :comisions
  devise_for :coordinadors
  devise_for :administradors
  get 'welcome/index'
  devise_for :teachers
  devise_for :alumnos
  resources :topicos
  resources :evaluacions
  resources :tipo_correccions
  resources :mems do
    resources :documentacions, only: [:create, :destroy, :update]
    resources :correccions, only: [:create, :destroy, :update]
  end 
  resources :carreras
  resources :estados

  put "/mems/:id/asignar_guia", to: "mems#asignar_guia"
  put "/mems/:id/validar_formulario", to: "mems#validar_formulario"
  put "/mems/:id/aceptar", to: "mems#aceptar"
  put "/mems/:id/validar_avance", to: "mems#validar_avance"
  put "/mems/:id/corregir_avance", to: "mems#corregir_avance"
  put "/mems/:id/corregir_presentacion", to: "mems#corregir_presentacion"
  put "/mems/:id/validar_borrador", to: "mems#validar_borrador"
  put "/mems/:id/corregir_borrador", to: "mems#corregir_borrador"
  put "/mems/:id/esperar_encuesta", to: "mems#esperar_encuesta"
  put "/mems/:id/completar", to: "mems#completar"
  put "/mems/:id/cancelar", to: "mems#cancelar"
  put "/mems/:id/confirmar_cancelacion", to: "mems#confirmar_cancelacion"
  put "/mems/:id/rechazar_formulario", to: "mems#rechazar_formulario"
  put "/mems/:id/finalizar", to: "mems#finalizar"

  get "/perfil", to: "welcome#perfil"
  get "/profesores", to: "welcome#profesores"
  get "/alumns", to: "welcome#alum"
  get "/comisiones", to: "welcome#comisiones"
  get "/coordinadores", to: "welcome#coordinadores"

  get "/home/formularioTitulacion1", to: "mems#formularioTitulacion1"
  get "/home/formularioTitulacion2", to: "mems#formularioTitulacion2"

  root 'welcome#index'
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
