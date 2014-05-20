class BrevetsController < ApplicationController
  before_action :set_brevet, only: [:show, :edit, :update, :destroy]

  # GET /brevets
  # GET /brevets.json
  def index
    @brevets = Brevet.all
  end

  # GET /brevets/1
  # GET /brevets/1.json
  def show
  end

  # GET /brevets/new
  def new
    @brevet = Brevet.new
  end

  # GET /brevets/1/edit
  def edit
  end

  # POST /brevets
  # POST /brevets.json
  def create
    @brevet = Brevet.new(brevet_params)

    respond_to do |format|
      if @brevet.save
        format.html { redirect_to @brevet, notice: 'Brevet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @brevet }
      else
        format.html { render action: 'new' }
        format.json { render json: @brevet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brevets/1
  # PATCH/PUT /brevets/1.json
  def update
    respond_to do |format|
      if @brevet.update(brevet_params)
        format.html { redirect_to @brevet, notice: 'Brevet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @brevet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brevets/1
  # DELETE /brevets/1.json
  def destroy
    @brevet.destroy
    respond_to do |format|
      format.html { redirect_to brevets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brevet
      @brevet = Brevet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brevet_params
      params.require(:brevet).permit(:name)
    end
end
