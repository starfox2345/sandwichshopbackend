class SandwichshopsController < ApplicationController

    def index
        sandwichshops = Sandwichshop.all
        render json: sandwichshops
    end

    def create
        sandwichshop = Sandwichshop.new(sandwichshop_params)
        
        if sandwichshop.save
            render json: sandwichshop
        else
            render json: {error: "Couldnt be saved"}
        end
    end

    def update
        sandwichshop = Sandwichshop.find_by_id(params[:id])
        if sandwichshop.update(sandwichshop_params)
            render json: sandwichshop
        else
            render json: {error: "Couldn't update"}
        end
    end

    def destroy
        sandwichshop = Sandwichshop.find_by_id(params[:id])
        sandwichshop.destroy
        render json: {message: "Successfully deleted #{sandwichshop.name}"}
    end

    private

    def sandwichshop_params
        params.require(:sandwichshop).permit(:name, :description, :city_id, :city_name)
    end

end
