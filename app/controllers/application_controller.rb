class ApplicationController < ActionController::Base

    def home
        
    end 

    def new
    end 

    def logout
        session[:user_id] = nil
        redirect_to :home
    end 

    
end
