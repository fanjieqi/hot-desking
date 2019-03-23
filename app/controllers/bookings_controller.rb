class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy, :custom]

  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper

  before_action do
    add_breadcrumb Booking.model_name.human.pluralize.downcase, :users_path
  end

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = smart_listing_create(:bookings, Booking.includes(:seat, :user).where(user_id: current_user.id), partial: "bookings/listing")
  end

  # GET /bookings/1
  # GET /bookings/1.jsons
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.create(booking_params.merge(user_id: current_user.id))
    redirect_to action: :index
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    @booking.update_attributes(booking_params)
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
  end

  def custom
    @booking.update_attributes(is_past: true)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.fetch(:booking, {}).permit(:user_id, :seat_id, :start_at, :end_at)
    end
end
