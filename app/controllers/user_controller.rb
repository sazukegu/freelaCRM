class UserController < ApplicationController
  load_and_authorize_resource
  def show
    return handle_user_profile if params[:username]
  end
  
  private
  
  def handle_user_profile
    @user = User.find_by(username: params[:username])
    not_found unless @user.present?
  end
end