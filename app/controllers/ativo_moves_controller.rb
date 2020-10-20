class AtivoMovesController < ApplicationController
  before_action :set_ativo_move, only: [:show, :edit, :update, :destroy]
  
  has_scope :por_carteira
  has_scope :por_ativo
  has_scope :por_tipo
  has_scope :por_corretora
  has_scope :por_investimento

  # GET /ativo_moves
  # GET /ativo_moves.json
  def index
    @ativo_moves = apply_scopes(AtivoMove).all
  end

  # GET /ativo_moves/1
  # GET /ativo_moves/1.json
  def show
  end

  # GET /ativo_moves/new
  def new
    @ativo_move = AtivoMove.new
  end

  # GET /ativo_moves/1/edit
  def edit
  end

  # POST /ativo_moves
  # POST /ativo_moves.json
  def create
    @ativo_move = AtivoMove.new(ativo_move_params)

    respond_to do |format|
      if @ativo_move.save
        format.html { redirect_to session[:user_previous_url], notice: 'Ativo move was successfully created.' }
        format.json { render :show, status: :created, location: @ativo_move }
      else
        format.html { render :new }
        format.json { render json: @ativo_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ativo_moves/1
  # PATCH/PUT /ativo_moves/1.json
  def update
    respond_to do |format|
      if @ativo_move.update(ativo_move_params)
        format.html { redirect_to ativo_moves_url, notice: 'Ativo move was successfully updated.' }
        format.json { render :show, status: :ok, location: @ativo_move }
      else
        format.html { render :edit }
        format.json { render json: @ativo_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ativo_moves/1
  # DELETE /ativo_moves/1.json
  def destroy
    @ativo_move.destroy
    respond_to do |format|
      format.html { redirect_to ativo_moves_url, notice: 'Ativo move was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ativo_move
      @ativo_move = AtivoMove.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ativo_move_params
      params.require(:ativo_move).permit(:carteira_id, :valor, :data, :quantidade, :movimento, :tipo_id, :ativo_id, :investimento_id, :corretora_id)
    end
end
