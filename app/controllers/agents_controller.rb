class AgentsController < ApplicationController
    skip_before_action :authorize, only:[:login, :handle_login, :new, :create]
    
    def new 
        @agent = Agent.new
    end

    def create
        @agent = Agent.create(agent_params)
        session[:agent_id] = @agent.id
        redirect_to login_path
    end

    def login 
    end

    def handle_login
        @agent = Agent.find_by(username: params[:username])
        if @agent && @agent.authenticate(params[:password])
            session[:agent_id] = @agent.id
            redirect_to clients_path
        else
            flash[:errors]=["Incorrect username or password"]
            redirect_to login_path
        end
    end

    def logout
        logout_agent 
        redirect_to login_path
    end 

    private
    def agent_params
        params.require(:agent).permit(:name, :username, :password)
    end
end
