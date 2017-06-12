Rails.application.routes.draw do
  	
  devise_for :users
  root :to => "statics#index"

  get '/about' => 'statics#about', :as => :about

  get 'statics/index'

  # get 'statics/about'

  get 'peliculas/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
