class AllItemsController < ApplicationController 
    def index
        render json: AllItem.all
    end
end