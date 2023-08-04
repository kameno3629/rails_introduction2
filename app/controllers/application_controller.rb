class ApplicationController < ActionController::Base
  add_flash_types :success

  def log_in_with(user)
    session[:user_id] = user.id
  end

  def log_out
    session.delete(:user_id)
  end

end
