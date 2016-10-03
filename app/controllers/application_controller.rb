class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Influencer
  def resource_name
    :influencer
  end
  helper_method :resource_name

  def resource
    @resource ||= Influencer.new
  end
  helper_method :resource

  def new
      @resource ||= Influencer.new

    if @influencer.save
        flash[:success] = "You will receive a confirmation email once we reviewed your profile"
        redirect_to root_path
      else
        flash[:danger] = "User not successfully added"
        redirect_to new_influencer_registration_path
      end
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:influencer]
  end

  # Marketer
  def marketer_resource_name
    :marketer
  end
  helper_method :marketer_resource_name

  def marketer_resource
    @marketer_resource ||= Marketer.new
  end
  helper_method :marketer_resource

  def marketer_new
      @marketer_resource ||= Marketer.new

    if @marketer.save
        flash[:success] = "WAU"
        redirect_to root_path
      else
        flash[:danger] = "User not successfully added"
        redirect_to root_path
      end
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:marketer]
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:igUsername, :firstName, :lastName, :companyName, :name, :budget, :country])
  end

  

end
