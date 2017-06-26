Rails.application.routes.draw do
  	
  

  get 'payment_select/select_plan'

  get 'payment_select/select_monthly_subscription'

  get 'select_movies/index'

  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  get '/select_plan' => 'payment_select#select_plan', as: :select_plan



  get '/about' => 'statics#about', :as => :about

  get 'statics/index'

  # get 'statics/about'

  get 'peliculas/index'

  get 'settings/index'

  resources :charges
    resources :select_movies, only: :index

  resources :peliculas do 
    resources :comentarios
  end
  resources :settings

  resources :statics

  

  root :to => "peliculas#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
