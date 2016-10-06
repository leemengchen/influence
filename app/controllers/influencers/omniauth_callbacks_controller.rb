class Influencers::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def instagram
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @influencer = Influencer.from_omniauth(request.env["omniauth.auth"])

    if @influencer.persisted?
      # sign_in_and_redirect edit_influencer_registration_url #this will throw if @user is not activated
      sign_in @influencer
      redirect_to edit_influencer_registration_url
      @ig_user = Instagram.basic_information(@influencer)
      @ig_media = Instagram.recent_media(@influencer)

      binding.pry
      @influencer.update_columns(followers: @ig_user.parsed_response['data']['counts']['followed_by'],
                                    following: @ig_user.parsed_response['data']['counts']['follows'],
                                    media: @ig_user.parsed_response['data']['counts']['media']

                                    )
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
