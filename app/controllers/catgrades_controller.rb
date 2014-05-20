class CatgradesController < ApplicationController
  before_action :set_catgrade, only: [:show, :edit, :update, :destroy]

  # GET /catgrades
  # GET /catgrades.json
  def index
    @catgrades = Catgrade.all
  end

  # GET /catgrades/1
  # GET /catgrades/1.json
  def show
  end

  # GET /catgrades/new
  def new
    @catgrade = Catgrade.new
  end

  # GET /catgrades/1/edit
  def edit
  end

  # POST /catgrades
  # POST /catgrades.json
  def create
    @catgrade = Catgrade.new(catgrade_params)

    respond_to do |format|
      if @catgrade.save
        format.html { redirect_to @catgrade, notice: 'Catgrade was successfully created.' }
        format.json { render action: 'show', status: :created, location: @catgrade }
      else
        format.html { render action: 'new' }
        format.json { render json: @catgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catgrades/1
  # PATCH/PUT /catgrades/1.json
  def update
    respond_to do |format|
      if @catgrade.update(catgrade_params)
        format.html { redirect_to @catgrade, notice: 'Catgrade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @catgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catgrades/1
  # DELETE /catgrades/1.json
  def destroy
    @catgrade.destroy
    respond_to do |format|
      format.html { redirect_to catgrades_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catgrade
      @catgrade = Catgrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catgrade_params
      params.require(:catgrade).permit(:libcatgrade)
    end
end
