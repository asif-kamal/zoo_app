class UsersController < ApplicationController
    before_action :require_login, except: [:new, :create]


    

    def new

      @user = User.new
    end
  
    def create
      user = User.create(user_params)
      if user
        session[:user_id] = user.id
        redirect_to user_path(user)
      else
        render :new
      end
    end
  
    def show
      @user = User.find_by(:id => params[:id])
    end
  
  private
  def user_params
    params.require(:user).permit(:username, :role, :section, :email, :password_digest, :experience_lvl, :section_id)
  end
 


end