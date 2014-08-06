class UsersController < ApplicationController
  
  def index
  	@users = User.all
    @users = User.where(is_active: true)
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

    # you do not need the at because its not rendered
  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
    if @user.save
      redirect_to users_path
    else 
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end


  # add as helper
  def update
    @user = User.find(params[:id])
    if current_user != @user
      if current_user
        redirect_to user_path(current_user)
      else 
        redirect_to new_session_path
      end
    elsif @user.update_attributes(params.require(:user).permit(:name, :email, :password, :password_confirmation, :is_active)) 
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.is_active = false
    @user.save
    @user.destroy

    redirect_to users_path
  end
  def reactivate 
    @user = User.find(params[:id])
  end
end
