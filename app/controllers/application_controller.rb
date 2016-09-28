class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

   protected

   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:igUsername, :firstName, :lastName])
   end


  def resource_name
    :influencer
  end
  helper_method :resource_name

  def resource
    @resource ||= Influencer.new
  end
  helper_method :resource

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:influencer]
  end

end
