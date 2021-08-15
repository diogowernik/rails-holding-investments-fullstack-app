class Api::YearsController < ApplicationController
  before_action :set_api_year, only: [:show, :update, :destroy]

  # GET /api/years
  # GET /api/years.json
  def index
    @api_years = Api::Year.all
  end

  # GET /api/years/1
  # GET /api/years/1.json
  def show
  end

  # POST /api/years
  # POST /api/years.json
  def create
    @api_year = Api::Year.new(api_year_params)

    if @api_year.save
      render :show, status: :created, location: @api_year
    else
      render json: @api_year.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/years/1
  # PATCH/PUT /api/years/1.json
  def update
    if @api_year.update(api_year_params)
      render :show, status: :ok, location: @api_year
    else
      render json: @api_year.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/years/1
  # DELETE /api/years/1.json
  def destroy
    @api_year.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_year
      @api_year = Api::Year.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_year_params
      params.fetch(:api_year, {})
    end
end
