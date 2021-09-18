class Api::V1::EntriesController < ApplicationController
    before_action :set_entry, only: [:update, :destroy]
    before_action :set_user
    
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
      if @entry.destroy
        render json: { status: 'success', message: 'Entry deleted'}
      else
        render json: { status: 'error', message: 'Sorry, the entry was not deleted!'}
      end
    end

    private 

    def entry_params
      params.require(:entry).permit(:name, :location, :notes, :user_id)
    end

    def set_entry
      @entry = Entry.find(params[:id])
    end

    def set_user 
      @user = User.find(params[:user_id])
    end
end
