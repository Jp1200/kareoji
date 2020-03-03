class ApplicationController < ActionController::Base

    def home

    end 

    def new
    end 

    def log_in
        @user = User.new 
        
    end 
end
