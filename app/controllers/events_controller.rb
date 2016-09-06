require 'application_helper'

class EventsController < ApplicationController
  before_action :logged_in_user, only: [:index, :create]
  before_action :admin_user,     only: [:edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.paginate(page: params[:page], per_page: 5)
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      # Handle a successful update.
      flash[:success] = "Event updated"
      redirect_to @event
    else
      render 'edit'
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
      Event.find(params[:id]).destroy
        flash[:success] = "Event deleted"
        redirect_to events_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:event).permit(:dateOfEvent, :timeOfEvent, :venue, :price,
    :title, :maximumParticipants, :minimumParticipants,
    :participantsMustBring, :notes, :picture)
  end
end
