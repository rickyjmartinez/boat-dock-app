class BoatsController < ApplicationController
  before_action :set_boat, only: %i[ show edit update destroy ]

  # GET /boats or /boats.json
  def index
    @boats = Boat.all
  end

  # GET /boats/1 or /boats/1.json
  def show
  end

  # GET /boats/new
  def new
    @boat = Boat.new
  end

  # GET /boats/1/edit
  def edit
  end

  # POST /boats or /boats.json
  def create
    @boat = Boat.new(boat_params)

    respond_to do |format|
      if @boat.save
        format.html { redirect_to boat_url(@boat), notice: "Boat was successfully created." }
        format.json { render :show, status: :created, location: @boat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @boat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boats/1 or /boats/1.json
  def update
    respond_to do |format|
      if @boat.update(boat_params)
        format.html { redirect_to boat_url(@boat), notice: "Boat was successfully updated." }
        format.json { render :show, status: :ok, location: @boat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @boat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boats/1 or /boats/1.json
  def destroy
    @boat.destroy

    respond_to do |format|
      format.html { redirect_to boats_url, notice: "Boat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boat
      @boat = Boat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boat_params
      params.require(:boat).permit(:name, :size, :captain)
    end
end
