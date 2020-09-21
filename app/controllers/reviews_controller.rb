class ReviewsController < ApplicationController

  def new
    @toy = Toy.find(params[:toy_id])
    @review = current_user.reviews.new
    @children = current_user.children
  end

  def confirm
    @toy = Toy.find(params[:toy_id])
    @review = current_user.reviews.new(review_params)
  end

  def create
    @toy = Toy.find(params[:toy_id])
    @review = current_user.reviews.new(review_params)
    @review.toy_id = @toy.id
    @review.user.id = current_user.id
      if @review.save
        redirect_to toy_path(@toy)
        flash[:notice] = "口コミを投稿しました"
      else
        render :new and return if params[:back]
      end
  end

  def index
    @reviews = Review.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def search
  @reviews = Review.search(params[:search])
  end

  private
  def review_params
    params.require(:review).permit(:review_point, :body, :effect_id, :toy_id, :rate, :user_id, :child_id)
  end
end