class SeatsController < ApplicationController
  before_action :set_seat, only: [:show, :edit, :update, :destroy]

  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper

  before_action do
    add_breadcrumb Seat.model_name.human.pluralize.downcase, :users_path
  end

  # GET /seats
  # GET /seats.json
  def index
    @seats = smart_listing_create(:seats, Seat.all, partial: "seats/listing")
  end

  # GET /seats/1
  # GET /seats/1.json
  def show
  end

  # GET /seats/new
  def new
    @seat = Seat.new
  end

  # GET /seats/1/edit
  def edit
  end

  # POST /seats
  # POST /seats.json
  def create
    @seat = Seat.create(seat_params)
  end

  # PATCH/PUT /seats/1
  # PATCH/PUT /seats/1.json
  def update
    @seat.update_attributes(seat_params)
  end

  # DELETE /seats/1
  # DELETE /seats/1.json
  def destroy
    @seat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seat
      @seat = Seat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seat_params
      params.fetch(:seat, {}).permit(:name)
    end
end
