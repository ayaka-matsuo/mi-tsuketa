class EffectsController < ApplicationController

def new
	@effect = Effect.new
end

def create
	@effect = Effect.new(effect_params)
	if @effect.save
      redirect_to effects_path, notice: "追加完了"
    else
      @effect = Effect.new
      render "new"
    end
end

def edit
end

def update
end

def index
	@effects = Effect.all
end

private
  def effect_params
    params.require(:effect).permit(:name)
  end



end

