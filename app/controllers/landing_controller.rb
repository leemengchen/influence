class LandingController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
