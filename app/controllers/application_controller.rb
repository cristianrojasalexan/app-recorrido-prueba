class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
    layout :layout_by_resource

    private
        def layout_by_resource
            if devise_controller?
                "login"
            else
                "application"
            end
        end
    protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name])
        end
end
