class Api::V1::EntriesController < ApplicationController
    
    def index
      entries = Entry.all 
      render json: entries 
    end

    private 

    def entry_params
      params.require(:entry).permit(:name, :location, :beers, :notes, :user_id)
    end
end
