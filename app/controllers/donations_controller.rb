class DonationsController < ApplicationController
  before_action :set_donation, only: %i[show edit update destroy]

  # GET /donations
  # GET /donations.json
  def index
    @donations = Donation.all
  end

  # GET /donations/1
  # GET /donations/1.json
  def show; end

  # GET /donations/new
  def new
    # @donation = Donation.new
    @donation = Dream.find_by_id(params[:dream_id]).donations.new
    pp @donation
  end

  # GET /donations/1/edit
  def edit; end

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

  # DELETE /donations/1
  # DELETE /donations/1.json
  def destroy
    @donation.destroy
    respond_to do |format|
      format.html { redirect_to donations_url, notice: 'Donation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_donation
    @donation = Donation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def donation_params
    params.require(:donation).permit(:name, :amount)
  end
end
