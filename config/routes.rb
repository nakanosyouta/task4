Rails.application.routes.draw do
  
    # 顧客用
    # URL /customers/sign_in ...
    devise_for :customers,skip: [:passwords], controllers: {
      registrations: "public/registrations",
      sessions: 'public/sessions'
    }  

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  
  namespace :admin do
    
    resources :customers, only: [:index, :new, :show, :edit, :create, :update]
    # 機械
    resources :machines, only: [:index, :new, :show, :edit, :create, :update, :destroy]
    # 指示書
    resources :instructions, only: [:index, :new, :show, :edit, :create, :update, :destroy]
    # 工程管理表
    resources :process_controls, only: [:index, :show, :edit, :update, :destroy]
  end
  
  scope module: :public do
    
    root to: 'homes#top'
    
    get 'homes/about'
    
    
    resources :customers, only: [:index, :new, :show, :edit, :create, :update]
    # 機械
    resources :machines, only: [:index, :show, :update]
    # 指示書
    resources :instructions, only: [:index, :show, :update]
    # 工程管理表
    resources :process_controls, only: [:index, :new, :show, :edit, :create, :update, :destroy]
  end
 
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
