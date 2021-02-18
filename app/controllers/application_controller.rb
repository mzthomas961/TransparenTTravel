class ApplicationController < ActionController::Base
    helper_method :current_agent, :is_logged_in?
    before_action :authorize

    def current_agent
        @current_agent = Agent.find_by(id: session[:agent_id])
    end

    def is_logged_in?
        !!current_agent
    end

    def authorize
        unless is_logged_in?
            redirect_to login_path
        end
    end

    def logout_agent
        session[:agent_id] = nil
        end

end

