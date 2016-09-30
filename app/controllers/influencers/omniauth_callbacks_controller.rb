class Influencers::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def instagram
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @influencer = Influencer.from_omniauth(request.env["omniauth.auth"])

    if @influencer.persisted?
      sign_in_and_redirect @influencer, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "instagram") if is_navigational_format?
    else
      session["devise.instagram_data"] = request.env["omniauth.auth"]
      redirect_to new_influencer_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
