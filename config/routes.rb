Rails.application.routes.draw do

    devise_for :users
	root 'top#index'
	get "top/about"
	  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :bookers
	resources :users

end
