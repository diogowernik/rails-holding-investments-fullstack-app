class DerivaMovesController < ApplicationController
  before_action :set_deriva_move, only: [:show, :edit, :update, :destroy]

  # GET /deriva_moves
  # GET /deriva_moves.json
  def index
    @deriva_moves = DerivaMove.all
  end

  # GET /deriva_moves/1
  # GET /deriva_moves/1.json
  def show
  end

  # GET /deriva_moves/new
  def new
    @deriva_move = DerivaMove.new
  end

  # GET /deriva_moves/1/edit
  def edit
  end

  # POST /deriva_moves
  # POST /deriva_moves.json
  def create
    @deriva_move = DerivaMove.new(deriva_move_params)

    respond_to do |format|
      if @deriva_move.save
        format.html { redirect_to deriva_moves_url, notice: 'Deriva move was successfully created.' }
        format.json { render :show, status: :created, location: @deriva_move }
      else
        format.html { render :new }
        format.json { render json: @deriva_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deriva_moves/1
  # PATCH/PUT /deriva_moves/1.json
  def update
    respond_to do |format|
      if @deriva_move.update(deriva_move_params)
        format.html { redirect_to deriva_moves_url, notice: 'Deriva move was successfully updated.' }
        format.json { render :show, status: :ok, location: @deriva_move }
      else
        format.html { render :edit }
        format.json { render json: @deriva_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deriva_moves/1
  # DELETE /deriva_moves/1.json
  def destroy
    @deriva_move.destroy
    respond_to do |format|
      format.html { redirect_to deriva_moves_url, notice: 'Deriva move was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deriva_move
      @deriva_move = DerivaMove.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deriva_move_params
      params.require(:deriva_move).permit(:carteira_id, :derivativo_id, :estado_id, :valor, :data, :quantidade, :movimento, :investimento_id, :corretora_id, :valor_recompra, :data_recompra, :resultado, :ativo_id)
    end
end
