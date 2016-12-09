class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash.now[:error] = @user.errors.full_messages.join(', ')
      render :new
    end
  end

  def show
    @user = User.find(current_user.id)
  end
end
