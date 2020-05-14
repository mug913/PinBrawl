class Admins::SessionsController < Devise::SessionsController
    before_action :authenticate_admin!
    
    def after_sign_out_path_for(resource_or_scope)
        new_admin_session_path
    end

    def after_sign_in_path_for(resource_or_scope)
        stored_location_for(resource_or_scope) || root_path
    end

    def dashboard
    end

    end

