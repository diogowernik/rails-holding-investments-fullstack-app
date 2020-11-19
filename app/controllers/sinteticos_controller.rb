class SinteticosController < ApplicationController
  before_action :set_sintetico, only: [:show, :edit, :update, :destroy]

  # GET /sinteticos
  # GET /sinteticos.json
  def index
    @sinteticos = Sintetico.all
  end

  # GET /sinteticos/1
  # GET /sinteticos/1.json
  def show
  end

  # GET /sinteticos/new
  def new
    @sintetico = Sintetico.new
  end

  # GET /sinteticos/1/edit
  def edit
  end

  # POST /sinteticos
  # POST /sinteticos.json
  def create
    @sintetico = Sintetico.new(sintetico_params)

    respond_to do |format|
      if @sintetico.save
        format.html { redirect_to params[:previous_request], notice: 'Sintetico was successfully created.' }
        format.json { render :show, status: :created, location: @sintetico }
      else
        format.html { render :new }
        format.json { render json: @sintetico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sinteticos/1
  # PATCH/PUT /sinteticos/1.json
  def update
    respond_to do |format|
      if @sintetico.update(sintetico_params)
        format.html { redirect_to params[:previous_request], notice: 'Sintetico was successfully updated.' }
        format.json { render :show, status: :ok, location: @sintetico }
      else
        format.html { render :edit }
        format.json { render json: @sintetico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sinteticos/1
  # DELETE /sinteticos/1.json
  def destroy
    @sintetico.destroy
    respond_to do |format|
      format.html { redirect_to sinteticos_url, notice: 'Sintetico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sintetico
      @sintetico = Sintetico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sintetico_params
      params.require(:sintetico).permit(:carteira_id, :ano_id, :jan, :fev, :mar, :abr, :mai, :jun, :jul, :ago, :set, :out, :nov, :dez)
    end
end
