class ChildArchivesController < ApplicationController
  def index
    @user = current_user
    @child_archives = ChildArchive.search(params[:search]).paginate(page: params[:page], per_page: 5)
  end

  def show
    @user = current_user
    @child_archive = @user.child_archives.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @user = current_user
    @child_archive = @user.child_archives.find(params[:id])

  end


  def update
    @user = current_user
    @child_archive = @user.child_archives.find(params[:id])
  if @child_archive.update(child_archive_params)
     flash[:success] = 'おもいでが更新されました！'
     redirect_to child_archives_path(@child_archive)
    else
     flash[:danger] = 'おもいでを更新出来ませんでした。空欄の箇所はありませんか？'
     render 'edit'
  end

  end

private
  def child_archive_params
    params.require(:child_archive).permit(:age_year, :age_month, :temperament, :environmente, :favorite_thing, :un_favorite_thing, :status, :profile_image, :memo, :user_id)
  end

end


