class FonctionnsController < ApplicationController
  before_action :set_fonctionn, only: [:show, :edit, :update, :destroy]

  # GET /fonctionns
  # GET /fonctionns.json
  def index
    @fonctionns = Fonctionn.all
  end

  # GET /fonctionns/1
  # GET /fonctionns/1.json
  def show
  end

  # GET /fonctionns/new
  def new
    @fonctionn = Fonctionn.new
  end

  # GET /fonctionns/1/edit
  def edit
  end

  # POST /fonctionns
  # POST /fonctionns.json
  def create
    @fonctionn = Fonctionn.new(fonctionn_params)

    respond_to do |format|
      if @fonctionn.save
        format.html { redirect_to @fonctionn, notice: 'Fonctionn was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fonctionn }
      else
        format.html { render action: 'new' }
        format.json { render json: @fonctionn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fonctionns/1
  # PATCH/PUT /fonctionns/1.json
  def update
    respond_to do |format|
      if @fonctionn.update(fonctionn_params)
        format.html { redirect_to @fonctionn, notice: 'Fonctionn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fonctionn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fonctionns/1
  # DELETE /fonctionns/1.json
  def destroy
    @fonctionn.destroy
    respond_to do |format|
      format.html { redirect_to fonctionns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fonctionn
      @fonctionn = Fonctionn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fonctionn_params
      params.require(:fonctionn).permit(:name)
    end
end
