class DerivaTiposController < ApplicationController
  before_action :set_deriva_tipo, only: [:show, :edit, :update, :destroy]

  # GET /deriva_tipos
  # GET /deriva_tipos.json
  def index
    @deriva_tipos = DerivaTipo.all
    
  end

  # GET /deriva_tipos/1
  # GET /deriva_tipos/1.json
  def show
    @acoes = Ativo.all.where(:tipo_id => 3)
    @puts_abertas = DerivaMove.all.where(:estado_id => 1).where(:deriva_tipo_id => 2)
    @investimentos = Investimento.all
  end

  # GET /deriva_tipos/new
  def new
    @deriva_tipo = DerivaTipo.new
  end

  # GET /deriva_tipos/1/edit
  def edit
    
  end

  # POST /deriva_tipos
  # POST /deriva_tipos.json
  def create
    @deriva_tipo = DerivaTipo.new(deriva_tipo_params)

    respond_to do |format|
      if @deriva_tipo.save
        format.html { redirect_to @deriva_tipo, notice: 'Deriva tipo was successfully created.' }
        format.json { render :show, status: :created, location: @deriva_tipo }
      else
        format.html { render :new }
        format.json { render json: @deriva_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deriva_tipos/1
  # PATCH/PUT /deriva_tipos/1.json
  def update
    respond_to do |format|
      if @deriva_tipo.update(deriva_tipo_params)
        format.html { redirect_to @deriva_tipo, notice: 'Deriva tipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @deriva_tipo }
      else
        format.html { render :edit }
        format.json { render json: @deriva_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deriva_tipos/1
  # DELETE /deriva_tipos/1.json
  def destroy
    @deriva_tipo.destroy
    respond_to do |format|
      format.html { redirect_to deriva_tipos_url, notice: 'Deriva tipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deriva_tipo
      @deriva_tipo = DerivaTipo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deriva_tipo_params
      params.require(:deriva_tipo).permit(:tipo)
    end
end
