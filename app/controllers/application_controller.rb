class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def budget
    number_to_currency(number, :unit => "MYR$ ", :separator => ",", :delimiter => ".")
  end
    
end
