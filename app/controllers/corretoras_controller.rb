class CorretorasController < ApplicationController
  before_action :set_corretora, only: [:show, :edit, :update, :destroy]

  # GET /corretoras
  # GET /corretoras.json
  def index
    @corretoras = Corretora.all
  end

  # GET /corretoras/1
  # GET /corretoras/1.json
  def show
  end

  # GET /corretoras/new
  def new
    @corretora = Corretora.new
  end

  # GET /corretoras/1/edit
  def edit
  end

  # POST /corretoras
  # POST /corretoras.json
  def create
    @corretora = Corretora.new(corretora_params)

    respond_to do |format|
      if @corretora.save
        format.html { redirect_to session[:user_previous_url], notice: 'Corretora was successfully created.' }
        format.json { render :show, status: :created, location: @corretora }
      else
        format.html { render :new }
        format.json { render json: @corretora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corretoras/1
  # PATCH/PUT /corretoras/1.json
  def update
    respond_to do |format|
      if @corretora.update(corretora_params)
        format.html { redirect_to corretoras_url, notice: 'Corretora was successfully updated.' }
        format.json { render :show, status: :ok, location: @corretora }
      else
        format.html { render :edit }
        format.json { render json: @corretora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corretoras/1
  # DELETE /corretoras/1.json
  def destroy
    @corretora.destroy
    respond_to do |format|
      format.html { redirect_to corretoras_url, notice: 'Corretora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corretora
      @corretora = Corretora.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def corretora_params
      params.require(:corretora).permit(:nome, :corretagem_fiis, :corretagem_acoes, :corretagem_opcoes, :corretagem_exerc, :corretagem_exerc_porcent, :corretagem_exerc_iss, :moeda)
    end
end

