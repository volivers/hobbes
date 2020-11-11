class ApplicationController < ActionController::Base

 before_action :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
  attributes = [:username, :location]
    devise_parameter_sanitizer.permit(:sign_up, keys:attributes)
    devise_parameter_sanitizer.permit(:account_update, keys:attributes)
 end

 def update_resource(resource, params)
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
      resource.update_without_password(some_params)
    else
      resource.update_with_password(some_params)
    end
  end

  def user_params
    params.require(:user).permit(:location, :bio, :current_password)
  end
end
