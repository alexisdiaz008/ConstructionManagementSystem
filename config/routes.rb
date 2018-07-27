Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'

	# devise_for :users, :controllers => {:sessions => "users/sessions"}
	# resources :user

	# get 'dashboard', to: 'pages#dashboard' , as: 'dashboard'
	
end
