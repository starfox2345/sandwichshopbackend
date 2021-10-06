class SandwichshopsController < ApplicationController

    def index
        sandwichshops = Sandwichshop.all
        render json: sandwichshops
    end

    def create
        sandwichshop = Sandwichshop.new(sandwichshop_params)
    end

    private

    def sandwichshop_params
        
    end

end
