class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  def create_from_omniauth
    byebug
  end

  def create
    @user = User.find_by(:name => params[:user][:name])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
           render :new
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