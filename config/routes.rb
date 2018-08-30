Rails.application.routes.draw do
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  get 'admin/index'
  resources :users
  get 'manager/index'
  resources :books
  resources :cartegories
  root to: 'manager#index'
  
   get 'admin' => 'admin#index'
    get 'register' => 'users#new'
      controller :session do
        get 'login' => :new
        post 'login' => :create
        delete 'logout' => :destroy
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
