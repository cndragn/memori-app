class SessionsController < ApplicationController
  def new
  # This is just showing us the form!
  end

  def create
    @user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to users_path
      #google authenticate code
    elsif user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to users_path
    else
      # If user's login doesn't work, send them back to the login form.
      redirect_to login_path
    end
  end

  def destroy
  session[:user_id] = nil
  redirect_to root_path
  end
end
