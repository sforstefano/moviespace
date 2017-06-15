Rails.application.routes.draw do
  	
  

  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)



  get '/about' => 'statics#about', :as => :about

  get 'statics/index'

  # get 'statics/about'

  get 'peliculas/index'

  get 'settings/index'

  resources :charges

  resources :peliculas do 
    resources :comentarios
  end
  resources :settings

  root :to => "statics#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
