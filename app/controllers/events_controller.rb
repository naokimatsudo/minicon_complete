class EventsController < ApplicationController
  def index
    if params[:id]
       @events = Event.where(event_category_id: params[:id])
    elsif params[:search]
       @events = Event.search(params[:search])
    elsif params[:search_name]
       @events = Event.search_name(params[:search_name]) 
    else
       @events = Event.all
    end
  end
end
