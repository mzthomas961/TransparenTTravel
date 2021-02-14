class VacationsController < ApplicationController
   def new
    @vacation = Vacation.new
   end

   def create
      @vacation = Vacation.create(vacation_params)
      redirect_to vacation_path(@vacation)
   end

   def show
      @vacation = Vacation.find(params[:id])
   end

   def edit
      @vacation = Vacation.find(params[:id])
   end

   def update
      @vacation = Vacation.find(params[:id])
      @vacation.update(vacation_params)
      redirect_to vacation_path(@vacation)
   end



   private

   def vacation_params
      params.require(:vacation).permit(:date, :destination, :hotel_price, :airline_price,:client_id, :airline_id, :hotel_id)
   end
end
