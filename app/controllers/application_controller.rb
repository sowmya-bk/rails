class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
      attributes = [:first_name, :email, :password, :mnumber]
      devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
      
    end
end
