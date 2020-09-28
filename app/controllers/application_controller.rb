class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resource)
        flash[:notice] = "ログインに成功しました"
        root_path  #　指定したいパスに変更
    end

    def authenticate_user

if @current_user == nil

redirect_to("/login")

end

end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :sex, :place, :introduction, :email])
  end



end
