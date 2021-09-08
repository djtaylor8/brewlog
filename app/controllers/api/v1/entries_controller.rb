class Api::V1::EntriesController < ApplicationController
    before_action :set_task, only: [:update, :destroy]
    
    def index
      entries = Entry.all 
      render json: entries 
    end

    def create
      entry = Entry.new(entry_params)
      if entry.save
        render json: entry 
      else
        render json: { status: 'error', message: "Sorry, the entry did not save!"}
      end
    end

    def update
      if @entry.update(entry_params)
        render json: @entry
      else 
        render json:  { status: 'error', message: 'Sorry, the entry was not updated!'}
      end
    end

    def destroy
      if @entry.delete
        render json: @entry
      else
        render json: { status: 'error', message: 'Sorry, the entry was not deleted!'}
      end
    end

    private 

    def entry_params
      params.require(:entry).permit(:name, :location, :beers, :notes, :user_id)
    end

    def set_entry
      @entry = Entry.find(params[:id])
    end
end
