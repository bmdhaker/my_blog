class PersonneesController < ApplicationController
  before_action :set_personnee, only: [:show, :edit, :update, :destroy]

  # GET /personnees
  # GET /personnees.json
  def index
    @personnees = Personnee.all
  end

  # GET /personnees/1
  # GET /personnees/1.json
  def show
  end

  # GET /personnees/new
  def new
    @personnee = Personnee.new
  end

  # GET /personnees/1/edit
  def edit
  end

  # POST /personnees
  # POST /personnees.json
  def create
    @personnee = Personnee.new(personnee_params)

    respond_to do |format|
      if @personnee.save
        format.html { redirect_to @personnee, notice: 'Personnee was successfully created.' }
        format.json { render action: 'show', status: :created, location: @personnee }
      else
        format.html { render action: 'new' }
        format.json { render json: @personnee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personnees/1
  # PATCH/PUT /personnees/1.json
  def update
    respond_to do |format|
      if @personnee.update(personnee_params)
        format.html { redirect_to @personnee, notice: 'Personnee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @personnee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personnees/1
  # DELETE /personnees/1.json
  def destroy
    @personnee.destroy
    respond_to do |format|
      format.html { redirect_to personnees_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personnee
      @personnee = Personnee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personnee_params
      params.require(:personnee).permit(:name, :fonctionn_id)
    end
end
