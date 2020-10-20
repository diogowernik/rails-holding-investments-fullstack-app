class AtivosController < ApplicationController
  before_action :set_ativo, only: [:show, :edit, :update, :destroy]
  
  has_scope :por_tipo

  # GET /ativos
  # GET /ativos.json
  def index
    @ativos = apply_scopes(Ativo).all
  end

  # GET /ativos/1
  # GET /ativos/1.json
  def show
  end

  # GET /ativos/new
  def new
    @ativo = Ativo.new
  end

  # GET /ativos/1/edit
  def edit
  end

  # POST /ativos
  # POST /ativos.json
  def create
    @ativo = Ativo.new(ativo_params)

    respond_to do |format|
      if @ativo.save
        format.html { redirect_to session[:user_previous_url], notice: 'Ativo was successfully created.' }
        format.json { render :show, status: :created, location: @ativo }
      else
        format.html { render :new }
        format.json { render json: @ativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ativos/1
  # PATCH/PUT /ativos/1.json
  def update
    respond_to do |format|
      if @ativo.update(ativo_params)
        format.html { redirect_to ativos_url, notice: 'Ativo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ativo }
      else
        format.html { render :edit }
        format.json { render json: @ativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ativos/1
  # DELETE /ativos/1.json
  def destroy
    @ativo.destroy
    respond_to do |format|
      format.html { redirect_to ativos_url, notice: 'Ativo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ativo
      @ativo = Ativo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ativo_params
      params.require(:ativo).permit(:ticker, :tipo_id)
    end
end
