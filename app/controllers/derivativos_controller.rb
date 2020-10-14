class DerivativosController < ApplicationController
  before_action :set_derivativo, only: [:show, :edit, :update, :destroy]

  # GET /derivativos
  # GET /derivativos.json
  def index
    @derivativos = Derivativo.all
  end

  # GET /derivativos/1
  # GET /derivativos/1.json
  def show
  end

  # GET /derivativos/new
  def new
    @derivativo = Derivativo.new
  end

  # GET /derivativos/1/edit
  def edit
  end

  # POST /derivativos
  # POST /derivativos.json
  def create
    @derivativo = Derivativo.new(derivativo_params)

    respond_to do |format|
      if @derivativo.save
        format.html { redirect_to derivativos_url, notice: 'Derivativo was successfully created.' }
        format.json { render :show, status: :created, location: @derivativo }
      else
        format.html { render :new }
        format.json { render json: @derivativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /derivativos/1
  # PATCH/PUT /derivativos/1.json
  def update
    respond_to do |format|
      if @derivativo.update(derivativo_params)
        format.html { redirect_to derivativos_url, notice: 'Derivativo was successfully updated.' }
        format.json { render :show, status: :ok, location: @derivativo }
      else
        format.html { render :edit }
        format.json { render json: @derivativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /derivativos/1
  # DELETE /derivativos/1.json
  def destroy
    @derivativo.destroy
    respond_to do |format|
      format.html { redirect_to derivativos_url, notice: 'Derivativo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_derivativo
      @derivativo = Derivativo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def derivativo_params
      params.require(:derivativo).permit(:codigo, :strike, :tipo, :vencimento, :ativo_id, :vencimento_id)
    end
end
