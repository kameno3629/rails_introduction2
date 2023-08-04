class UserSessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:user_session][:email])
    result = user&.authenticate(params[:user_session][:password])
    if result
      log_in_with user
      redirect_to top_page_url, success: 'Login successful!'
    else
      flash.now[:danger] = 'Invalid email or password'
      render :new
    end
  end

  def destroy
    log_out
    redirect_to login_path, success: 'Logout successful!'
  end
end

