class DonationsController < ApplicationController
  before_action :set_donation, only: %i[show update destroy]

  # GET /donations
  # GET /donations.json

  # GET /donations/1
  # GET /donations/1.json
  def show; end

  # GET /donations/new
  def new
    # @donation = Donation.new
    @donation = Dream.find_by_id(params[:dream_id]).donations.new
    pp @donation
  end

  # POST /donations
  # POST /donations.json
  def create
    @donation = Donation.new(donation_params)
    @donation.user_id = current_user.id
    @donation.dream_id = Dream.find_by_id(params[:dream_id]).id

    respond_to do |format|
      if @donation.save
        format.html { redirect_to dream_path(@donation.dream_id), notice: 'Donation was successfully created.' }
        format.json { render :show, status: :created, location: @donation }
      else
        format.html { render :new }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donations/1
  # PATCH/PUT /donations/1.json
  def update
    respond_to do |format|
      if @donation.update(donation_params)
        format.html { redirect_to @donation, notice: 'Donation was successfully updated.' }
        format.json { render :show, status: :ok, location: @donation }
      else
        format.html { render :edit }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_donation
    @donation = Donation.find(params[:id])
  end

  def donation_params
    params.require(:donation).permit(:name, :amount)
  end
end
