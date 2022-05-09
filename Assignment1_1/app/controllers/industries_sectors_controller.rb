class IndustriesSectorsController < ApplicationController
  before_action :set_industries_sector, only: %i[ show edit update destroy ]

  # GET /industries_sectors or /industries_sectors.json
  def index
    @industries_sectors = IndustriesSector.all
  end

  # GET /industries_sectors/1 or /industries_sectors/1.json
  def show
  end

  # GET /industries_sectors/new
  def new
    @industries_sector = IndustriesSector.new
  end

  # GET /industries_sectors/1/edit
  def edit
  end

  # POST /industries_sectors or /industries_sectors.json
  def create
    @industries_sector = IndustriesSector.new(industries_sector_params)

    respond_to do |format|
      if @industries_sector.save
        format.html { redirect_to industries_sector_url(@industries_sector), notice: "Industries sector was successfully created." }
        format.json { render :show, status: :created, location: @industries_sector }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @industries_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /industries_sectors/1 or /industries_sectors/1.json
  def update
    respond_to do |format|
      if @industries_sector.update(industries_sector_params)
        format.html { redirect_to industries_sector_url(@industries_sector), notice: "Industries sector was successfully updated." }
        format.json { render :show, status: :ok, location: @industries_sector }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @industries_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /industries_sectors/1 or /industries_sectors/1.json
  def destroy
    @industries_sector.destroy

    respond_to do |format|
      format.html { redirect_to industries_sectors_url, notice: "Industries sector was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_industries_sector
      @industries_sector = IndustriesSector.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def industries_sector_params
      params.fetch(:industries_sector, {})
    end
end
