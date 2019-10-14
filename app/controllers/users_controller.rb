class UsersController < ApplicationController

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_id, :name])
  end
  def new
  end

  def create
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :avatar, :profile)
  end
end
