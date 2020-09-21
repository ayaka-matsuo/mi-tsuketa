class ToysController < ApplicationController

  def new
    @toy = Toy.new
  end

  def create
    @toy = Toy.new(toy_params)
    if @toy.save
      redirect_to toy_path(@toy), notice: "追加完了"
    else
      @toy = Toy.new
      render "new"
    end
  end

  def show
    @toy = Toy.find(params[:id])
  end

  def index
    @toys = Toy.paginate(page: params[:page], per_page: 20).search(params[:search])
    @user = current_user
  end

  def edit
     @toy = Toy.find(params[:id])
  end

  def update
    @toy = Toy.find(params[:id])
    if @toy.update(toy_params)
      redirect_to toy_path(@toy), notice: "更新完了"
    else
      @toy = Toy.find(params[:id])
      render "edit"
    end
  end

  def destroy
  end


  private
  def toy_params
    params.require(:toy).permit(:name, :price, :manufacturer, :genre_id, :toy_image, :toy_introduction, :depth, :width, :height, :target_age, :material)
  end

end
