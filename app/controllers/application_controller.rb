class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        if interpreter_signed_in? 
            stored_location_for(resource) || interpreters_path
        else #client_signed_in?
            stored_location_for(resource) || root_path
        end
    end
end
