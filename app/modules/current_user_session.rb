module CurrentUserSession
  def current_user
    id = session[:current_user_id]
    return if id.nil?

    User.find(id)
  end

  def save_user_session(user)
    session[:current_user_id] = user.id
  end
end