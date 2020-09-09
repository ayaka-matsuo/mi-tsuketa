class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  	if @user != current_user
     redirect_to user_path(current_user.id), alert: "不正なアクセスです"
    end
  end

  def update
  	@user = User.find(params[:id])
  	if
      @user.update(user_params)
      flash[:notice] = "プロフィールを更新しました"
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

private
  def user_params
  	params.require(:user).permit(:name, :introduction, :profile_image, :place, :hobby, :sex, :age, :email)
  end


end
