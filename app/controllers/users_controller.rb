class UsersController < ApplicationController
  load_and_authorize_resource
  def show
    return handle_user_profile if params[:username]
  end

  def update
    @user = current_user

    if @user&.update(user_params)
      flash[:success] = "User has been updated!"
      redirect_to user_path(current_user)
    else
      flash[:danger] = @user.errors_as_sentence
      render :edit
    end
  end

  private

  def handle_user_profile
    @user = User.find_by(username: params[:username])
    not_found unless @user.present?
  end

  def user_params
    params.require(:user).permit(:id, :username, :summary)
  end
end
