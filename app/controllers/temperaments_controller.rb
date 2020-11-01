class TemperamentsController < ApplicationController

def index
  @temperaments = Temperament.all
end

def new
  @temperament = Temperament.new
end

def create
  @temperament = Temperament.new(temperament_params)
    if @temperament.save
      redirect_to temperaments_path(@temperament), notice: "追加完了"
    else
      @temperament = Temperament.new
      render "new"
    end
end

def edit
end

def update
end

private
  def temperament_params
    params.require(:temperament).permit(:name)
  end



end

