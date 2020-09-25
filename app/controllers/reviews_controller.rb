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
    review_params_temperament_ids.each do |temperament_id|
      @review.review_temperaments.build(temperament_id: temperament_id)
    end
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


  def search
  @reviews = Review.search(params[:search])
  end

  def myreview
    @user = current_user
    @reviews = @user.reviews.all
  end

  private
  def review_params
    params.require(:review).permit(:body, :effect_id, :toy_id, :rate, :user_id, :child_id)
  end

  def review_params_temperament_ids
    params.require(:temperament_ids)
  end


end