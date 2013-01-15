class SessionsController < ApplicationController
 def new
    @title = "Sign In"
  end

  def create
    user = User.authenticate(params[:session][:name],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid name/password combination."
      @title = "Sign In"
      render :new
    else
      session[:current_user_id] = user.id
      sign_in user
      if user.admin?
      redirect_to '/index'
      else 
      redirect_to '/usersurvey'
    end
    end
  end
 def destroy
    sign_out
    redirect_to root_path
  end
end
