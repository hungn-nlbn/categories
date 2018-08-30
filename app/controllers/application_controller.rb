class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :authorize
	  rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_url, :alert => exception.message
      end

  protected
  
    def authorize
        @user = User.find_by_id(session[:user_id]) 
        if @user == nil
            redirect_to '/login', :notice => 'You must login first'
        end
    end
end
