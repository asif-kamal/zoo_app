class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  def new
  end
  
  def create_from_omniauth
    @user = User.from_omniauth(auth)
    #byebug
    if @user
      session[:user_id] = @user.id
      render '/users/edit'
    else
      flash[:notice] = 'Google Login Failed'
      redirect_to '/users/new'

    end
    
  end

  def create
    
    @user = User.find_by(:username => params[:username])
    
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
          flash[:notice] = "Login Failed"
          redirect_to '/login'
      end
  end

        def destroy
          if current_user
            session.delete :user_id
            redirect_to root_url
          end
        end
       
        private
       
        def auth
          request.env['omniauth.auth']
        end
      
end