Rails.application.routes.draw do
	root 'colleges#index'

	resources :colleges do
		resources :students, only: [:index]
	end


	resources :students   


	
end
