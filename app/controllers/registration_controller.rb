class RegistrationController < ApplicationController

        protected
        
        def update_resourece(resourece, params)
        
            return super if params["password"]&.present?
        
            resource.update_without_password(params.except("current_password"))
        end
        
        
end
