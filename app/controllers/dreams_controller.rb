class DreamsController < ApplicationController
  before_action :set_dream, only: %i[show]
  before_action :authenticate_user!

  # GET /dreams
  # GET /dreams.json
  def index
    @dreams = Dream.all
  end

  # GET /dreams/1
  # GET /dreams/1.json
  def show
    @donations = @dream.donations.includes(:author) # N+1 improvement for the Dreams show page
  end

  # GET /dreams/new
  def new
    @dream = Dream.new
  end

  # POST /dreams
  # POST /dreams.json
  def create
    @dream = Dream.new(dream_params)
    @dream.user_id = current_user.id

    respond_to do |format|
      if @dream.save
        format.html { redirect_to @dream, notice: 'Dream was successfully created.' }
        format.json { render :show, status: :created, location: @dream }
      else
        format.html { render :new }
        format.json { render json: @dream.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_dream
    @dream = Dream.find(params[:id])
  end

  def dream_params
    params.require(:dream).permit(:name, :money_objective, :icon, :image)
  end

  def donation_params
    params.require(:donation).permit(:name, :amount, :dream_id)
  end
end
