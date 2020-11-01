class ChildrenController < ApplicationController

  before_action :authenticate_user!

  def new
    @user = current_user
    @child = Child.new
    @temperaments = Temperament.all
  end

  def create
    @child = Child.new(child_params)
    @child.user_id = current_user.id
    @user = current_user
    if @child.save
      flash[:notice] = "おこさまの情報を登録しました"
      redirect_to user_path(@user.id)

      child_archive = @child.child_archives.build
      child_archive.child_id = @child.id
      child_archive.age_year = @child.age_year
      child_archive.age_month = @child.age_month
      child_archive.favorite_thing = @child.favorite_thing
      child_archive.un_favorite_thing = @child.un_favorite_thing
      child_archive.status = @child.status
      child_archive.profile_image_id = @child.profile_image_id
      child_archive.temperament_ids = @child.temperament_ids
      child_archive.name = @child.name
      child_archive.user_id = current_user.id
      child_archive.save
    else
      flash[:notice] = "登録できませんでした"
      render :new
    end
  end

  def index
    @user = current_user
  end

  def show
    @child = Child.find(params[:id])
  end

  def edit
    @child = Child.find(params[:id])
  end

  def update
      @child = Child.find(params[:id])
    if @child.update(child_params)
       flash[:success] = 'お客様の情報が更新されました！'
       redirect_to child_path(@child.id)

        child_archive = @child.child_archives.build
        child_archive.child_id = @child.id
        child_archive.age_year = @child.age_year
        child_archive.age_month = @child.age_month
        child_archive.favorite_thing = @child.favorite_thing
        child_archive.un_favorite_thing = @child.un_favorite_thing
        child_archive.status = @child.status
        child_archive.profile_image_id = @child.profile_image_id
        child_archive.temperament_ids = @child.temperament_ids
        child_archive.name = @child.name
        child_archive.user_id = current_user.id
        child_archive.save

    else
       @child = Child.find(params[:id])
       flash[:danger] = 'お客様の情報を更新出来ませんでした。空欄の箇所はありませんか？'
       render 'edit'
    end
  end


  private
    def child_params
      params.require(:child).permit(:name, :sex, :age_year, :age_month, :favorite_thing, :un_favorite_thing, :status, :profile_image, :user_id, temperament_ids:[],
        child_archives_attributes: [:id,:age_year, :age_month, :favorite_thing, :un_favorite_thing, :status, :profile_image, :memo, :name, :user_id, temperament_ids:[]])
    end

end
