Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	#Jobs Controller
  root 'jobs#index'
  resources :jobs do
	  resources :scopes do
		  resources :documents
	  end
  end

  #Scopes Controller

	#Users Controller
	devise_for :users, :controllers => {:sessions => "users/sessions"}
	resources :user

	# get 'dashboard', to: 'pages#dashboard' , as: 'dashboard'
	
end
