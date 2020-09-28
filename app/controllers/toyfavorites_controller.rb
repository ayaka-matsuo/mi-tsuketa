class ToyfavoritesController < ApplicationController

  before_action :authenticate_user!

	def create
	toy = Toy.find(params[:toy_id])
    toyfavorite = current_user.toyfavorites.new(toy_id: toy.id)
    toyfavorite.save
    redirect_back(fallback_location: root_path)
  end

  	def destroy
	toy = Toy.find(params[:toy_id])
    toyfavorite = current_user.toyfavorites.find_by(toy_id: toy.id)
    toyfavorite.destroy
    redirect_back(fallback_location: root_path)

  	end

end
