class DashboardController < ApplicationController

before_action :require_marketer

  def show
    @marketer = current_marketer
  end
end
