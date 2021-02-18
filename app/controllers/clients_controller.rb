class ClientsController < ApplicationController

    def index
        @clients = Client.all
    end

    def new
    
        @client= Client.new
    end

    def show
        @client= Client.find(params[:id])
    end

    def create 
        @client= @current_agent.clients.create(client_params)
        redirect_to client_path (@client)
    end

    def edit
        @client = Client.find(params[:id])
    end

    def update
        @client = Client.find(params[:id])
        @client.update(client_params)
        redirect_to client_path(@client)
    end

    def destroy
        @client = Client.find(params[:id])
        @client.destroy
        redirect_to clients_path
    end


    private
    def client_params
    params.require(:client).permit(:name, :age)
    end


end
