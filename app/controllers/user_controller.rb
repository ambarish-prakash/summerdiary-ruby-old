class UserController < ApplicationController
  include ::CurrentUserSession

  def create
    if current_user.nil?
      @user = User.new(user_params)
      @user.save
      save_user_session(@user)
    else
      @user = current_user
      @user.name = user_params['name']
      @user.status = 'active'
      @user.save
    end
    redirect_to lobby_index_path
  end

private
  def user_params
    params.require(:user).permit(:name)
  end
end
