Rails.application.routes.draw do
	resources :database
  get 'database/index'

  get 'database/new'

  get 'database/create'

  get 'database/show'

  get 'database/edit'

  get 'database/update'

  get 'database/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
