class AgentsController < ApplicationController

    def new 
        @agent = Agent.new
    end

    def create
        @agent = Agent.create(agent_params)
        redirect_to login_path
    end

    def login 
    end

    def handle_login
        @agent = Agent.find_by(username: params[:user])
        if @agent && @agent.authenticate(params[:password])
            redirect_to clients_path
        else
            flash[:errors]=["Incorrect username or password"]
            redirect_to login_path
        end
    end

    private
    def agent_params
        params.require(:agent).permit(:name, :username, :password)
    end
end
