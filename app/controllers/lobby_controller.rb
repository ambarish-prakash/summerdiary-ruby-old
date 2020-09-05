class LobbyController < ApplicationController
  include ::CurrentUserSession

  def index
    return redirect_to login_index_path if current_user.nil?
    @user = current_user
  end
end
