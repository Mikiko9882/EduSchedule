class UserSessionsController < ApplicationController
  def new; end

  def create
    @user = login(params[:user_name], params[:password])
    if @user
      redirect_back_or_to root_path
    else
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end