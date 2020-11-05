class ProventosController < ApplicationController
  before_action :set_provento, only: [:show, :edit, :update, :destroy]

  # GET /proventos
  # GET /proventos.json
  def index
    @proventos = Provento.all
  end

  # GET /proventos/1
  # GET /proventos/1.json
  def show
  end

  # GET /proventos/new
  def new
    @provento = Provento.new
  end

  # GET /proventos/1/edit
  def edit
  end

  # POST /proventos
  # POST /proventos.json
  def create
    @provento = Provento.new(provento_params)

    respond_to do |format|
      if @provento.save
        format.html { redirect_to @provento, notice: 'Provento was successfully created.' }
        format.json { render :show, status: :created, location: @provento }
      else
        format.html { render :new }
        format.json { render json: @provento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proventos/1
  # PATCH/PUT /proventos/1.json
  def update
    respond_to do |format|
      if @provento.update(provento_params)
        format.html { redirect_to @provento, notice: 'Provento was successfully updated.' }
        format.json { render :show, status: :ok, location: @provento }
      else
        format.html { render :edit }
        format.json { render json: @provento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proventos/1
  # DELETE /proventos/1.json
  def destroy
    @provento.destroy
    respond_to do |format|
      format.html { redirect_to proventos_url, notice: 'Provento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provento
      @provento = Provento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def provento_params
      params.require(:provento).permit(:carteira_id, :ano_id, :jan, :fev, :mar, :abr, :mai, :jun, :jul, :ago, :set, :out, :nov, :dez)
    end
end
