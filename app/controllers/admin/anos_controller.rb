class Admin::AnosController < AdminController
  before_action :set_ano, only: [:show, :edit, :update, :destroy]

  # GET /admin/anos
  # GET /admin/anos.json
  def index
    @anos = Ano.all
  end

  # GET /admin/anos/1
  # GET /admin/anos/1.json
  def show
  end

  # GET /admin/anos/new
  def new
    @ano = Ano.new
  end

  # GET /admin/anos/1/edit
  def edit
  end

  # POST /admin/anos
  # POST /admin/anos.json
  def create
    @ano = Ano.new(ano_params)

    respond_to do |format|
      if @ano.save
        format.html { redirect_to admin_anos_path, notice: 'Ano was successfully created.' }
        format.json { render :show, status: :created, location: @ano }
      else
        format.html { render :new }
        format.json { render json: @ano.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/anos/1
  # PATCH/PUT /admin/anos/1.json
  def update
    respond_to do |format|
      if @ano.update(ano_params)
        format.html { redirect_to admin_ano_path(@ano), notice: 'Ano was successfully updated.' }
        format.json { render :show, status: :ok, location: @ano }
      else
        format.html { render :edit }
        format.json { render json: @ano.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/anos/1
  # DELETE /admin/anos/1.json
  def destroy
    @ano.destroy
    respond_to do |format|
      format.html { redirect_to admin_anos_path, notice: 'Ano was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ano
      @ano = Ano.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ano_params
      params.require(:ano).permit!
    end
end
