class EventsController < ApplicationController
  before_filter :signed_in_user,  only: [:index, :edit, :update, :new, :destroy]
  before_filter :correct_user,    only: [:index, :edit, :update, :new, :destroy]
  #before_filter :admin_user,      only: [:index, :edit, :update, :new, :destroy]
  before_filter :prepare_for_mobile, :only => [:index] 

  def index
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @events = Event.where(starttime: @date.beginning_of_month .. (@date + 1.month).beginning_of_month)
    @events_by_date = @events.group_by {|e| e.starttime.to_date }
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      flash[:success] = "Successfully created event."
      redirect_to events_url
    else
      render :action => 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      flash[:success] = "Successfully updated event."
      redirect_to events_url
    else
      render :action => 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:success] = "Successfully destroyed event."
    redirect_to events_url
  end
end
