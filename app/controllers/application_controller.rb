class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Pundit
  # The statement below checks if the authorize method from the pundit gem is present in every controller or not. If the method is not present then it throws AuthorizationNotPerformedError. 
  # It checks actions for entire application as it is placed in the application controller. If we want to authorize for a particular controller we can put the statement below in that particular controller.
  after_action :verify_authorized, unless: :devise_controller?
end
