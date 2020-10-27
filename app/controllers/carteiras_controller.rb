class CarteirasController < ApplicationController
  before_action :set_carteira, only: [:show, :edit, :update, :destroy]


  # GET /carteiras
  # GET /carteiras.json
  def index
    @carteiras = Carteira.all
  end

  # GET /carteiras/1
  # GET /carteiras/1.json
  def show
  end

  # GET /carteiras/new
  def new
    @carteira = Carteira.new
  end

  # GET /carteiras/1/edit
  def edit
  end

  # POST /carteiras
  # POST /carteiras.json
  def create
    @carteira = Carteira.new(carteira_params)

    respond_to do |format|
      if @carteira.save
        format.html { redirect_to session[:user_previous_url], notice: 'Carteira was successfully created.' }
        format.json { render :show, status: :created, location: @carteira }
      else
        format.html { render :new }
        format.json { render json: @carteira.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carteiras/1
  # PATCH/PUT /carteiras/1.json
  def update
    respond_to do |format|
      if @carteira.update(carteira_params)
        format.html { redirect_to carteiras_url, notice: 'Carteira was successfully updated.' }
        format.json { render :show, status: :ok, location: @carteira }
      else
        format.html { render :edit }
        format.json { render json: @carteira.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carteiras/1
  # DELETE /carteiras/1.json
  def destroy
    @carteira.destroy
    respond_to do |format|
      format.html { redirect_to carteiras_url, notice: 'Carteira was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carteira
      @carteira = Carteira.find(params[:id])
      @acoes_da_carteira = @carteira.investimentos.where(:tipo_id => 3).includes(:ativo).order("ativos.ticker asc")
      @acoes_da_carteira_clear = @carteira.investimentos.where(:tipo_id => 3).where(:corretora_id => 1).includes(:ativo).order("ativos.ticker asc")
      @fiis_da_carteira = @carteira.investimentos.where(:tipo_id => 4).includes(:ativo).order("ativos.ticker asc")
      @calls = @carteira.deriva_moves.where(:deriva_tipo_id => 1)
      @puts = @carteira.deriva_moves.where(:deriva_tipo_id => 2)
      @calls_abertas = @carteira.deriva_moves.where(:deriva_tipo_id => 1).where(:estado_id => 1)
      @puts_abertas = @carteira.deriva_moves.where(:deriva_tipo_id => 2).where(:estado_id => 1)
    end

    # Only allow a list of trusted parameters through.
    def carteira_params
      params.require(:carteira).permit(:nome, :user_id)
    end
end
