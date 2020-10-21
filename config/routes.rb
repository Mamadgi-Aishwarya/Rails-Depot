Rails.application.routes.draw do
 get 'admin' => 'admin#index'
 controller :sessions do
 get 'login' => :new  #this is a shortcut 
 post 'login' => :create
 delete 'logout' => :destroy
 end

  get 'admin/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  
  resources :products do
    get :who_bought, on: :member
  end
    
  resources :users
  resources :support_requests, only: [ :index, :update ]
  scope '(:locale)' do #:locale is in parentheses, which is the way to say that it’s optional.It is given for translation
  resources :orders
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'
  end
  
end
