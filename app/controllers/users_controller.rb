class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper

  # GET /users
  # GET /users.json
  def index
    @users = smart_listing_create(:users, User.includes(:booking, :seat).search_by_keyword(params[:keyword]), partial: "users/listing")
  end

  # GET /users/1
  # GET /users/1.json
  def show
    add_breadcrumb I18n.t("helpers.submit.create", model: Booking.model_name.human)
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.create(user_params)
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user.update_attributes(user_params)
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroys
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.fetch(:user, {}).permit(:email, :name)
    end
end
