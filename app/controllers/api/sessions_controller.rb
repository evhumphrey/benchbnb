class Api::SessionsController < ApplicationController

  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    puts params[:user]
    if @user
      login!(@user)
      render 'api/users/show.json.jbuilder'
    else
      render json: { errors: ["Invalid Credentials"] }, status: 422
    end
  end

  def destroy
    if current_user
      logout!
      render json: {}
    else
      render json: { errors: ['help'] }, status: 404
    end
  end
end
