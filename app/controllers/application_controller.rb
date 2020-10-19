class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :set_previous_url

    def set_previous_url
        session[:user_previous_url] = URI(request.referer || '').path
    end
end
