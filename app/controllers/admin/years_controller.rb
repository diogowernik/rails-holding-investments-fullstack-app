class Admin::YearsController < AdminController
  before_action :set_year, only: [:show, :edit, :update, :destroy]

  # GET /admin/years
  # GET /admin/years.json
  def index
    @years = Year.all
  end

  # GET /admin/years/1
  # GET /admin/years/1.json
  def show
  end

  # GET /admin/years/new
  def new
    @year = Year.new
  end

  # GET /admin/years/1/edit
  def edit
  end

  # POST /admin/years
  # POST /admin/years.json
  def create
    @year = Year.new(year_params)

    respond_to do |format|
      if @year.save
        format.html { redirect_to admin_years_path, notice: 'Year was successfully created.' }
        format.json { render :show, status: :created, location: @year }
      else
        format.html { render :new }
        format.json { render json: @year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/years/1
  # PATCH/PUT /admin/years/1.json
  def update
    respond_to do |format|
      if @year.update(year_params)
        format.html { redirect_to admin_years_path, notice: 'Year was successfully updated.' }
        format.json { render :show, status: :ok, location: @year }
      else
        format.html { render :edit }
        format.json { render json: @year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/years/1
  # DELETE /admin/years/1.json
  def destroy
    @year.destroy
    respond_to do |format|
      format.html { redirect_to admin_years_path, notice: 'Year was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_year
      @year = Year.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def year_params
      params.require(:year).permit!
    end
end
