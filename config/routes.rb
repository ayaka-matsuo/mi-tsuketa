Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :users, only: [:show, :edit, :update]
resources :toys do
	resource :toyfavorites, only: [:create, :destroy]
	resources :reviews do
		resource :reviewfavorites, only: [:create, :destroy]
		collection do
      		post :confirm
    	end
    end
end
resources :genres, only: [:new, :index, :create, :edit, :update]
resources :children, only: [:index, :show, :new, :create, :edit, :update]
resources :child_archives, only: [:index, :show, :new, :create, :edit, :update]
resources :effects, only: [:new, :index, :create, :edit, :update]
resources :temperaments, only: [:new, :create, :edit, :update, :index]

get 'homes/about'
root 'homes#top'

end
