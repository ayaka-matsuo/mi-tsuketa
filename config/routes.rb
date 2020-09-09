Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :users, only: [:show, :edit, :update]
resources :toys do
	resources :reviews do
		collection do
      		post :confirm
    	end
    end
end
resources :genres, only: [:new, :index, :create, :edit, :update]
resources :children, only: [:index, :show, :new, :create, :edit, :update]
resources :child_archives, only: [:index, :show, :new, :create, :edit, :update]
resources :effects, only: [:new, :index, :create, :edit, :update]

get 'homes/about'
root 'homes#top'

end
