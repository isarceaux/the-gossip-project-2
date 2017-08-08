class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :sanitize_devise_params, if: :devise_controller?

  include ApplicationHelper

  def sanitize_devise_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:anonymous_username])
  end

  private
    # Before filters
    # Confirms a logged-in Corsaire.
    def logged_in_corsaire
      unless logged_in?
        #store_location
        flash[:danger] = "Please log in."
        redirect_to new_corsaire_session_path
      end
    end

end
