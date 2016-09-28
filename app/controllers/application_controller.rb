class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

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
