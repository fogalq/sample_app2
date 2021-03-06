class SessionsController < ApplicationController
    include SessionsHelper
  def new
  end
    
    def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
        log_in user
        if params[:session][:remember_me] == '1'
  remember(user)
else
  forget(user)
end
        redirect_to user
    else
      # Create an error message.
        flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
    end
    
    def destroy
        log_out
        redirect_to login_path
    end
end
