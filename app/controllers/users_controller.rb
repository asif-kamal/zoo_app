class UsersController < ApplicationController
    before_action :require_login, except: [:new, :create]


    

    def new

      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      # params.delete(:section_id)
      # byebug
      if @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        #byebug
        render :new
      end
    end
  
    def show
      @user = User.find_by(:id => params[:id])
    end

    def edit
      @user = User.find_by(name: username)
    
    end

    def update

      if @user.update(user_params)
          redirect_to user_path(@user)
       
      else
          render :edit
         
      end
   end

  
  private
  def user_params
    params.require(:user).permit(:username, :role, :email, :password, :password_confirmation, :experience_lvl, :section_id)
  end
 


end