class FonctionsController < ApplicationController
  before_action :set_fonction, only: [:show, :edit, :update, :destroy]

  # GET /fonctions
  # GET /fonctions.json
  def index
    @fonctions = Fonction.all
  end

  # GET /fonctions/1
  # GET /fonctions/1.json
  def show
  end

  # GET /fonctions/new
  def new
    @fonction = Fonction.new
  end

  # GET /fonctions/1/edit
  def edit
  end

  # POST /fonctions
  # POST /fonctions.json
  def create
    @fonction = Fonction.new(fonction_params)

    respond_to do |format|
      if @fonction.save
        format.html { redirect_to @fonction, notice: 'Fonction was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fonction }
      else
        format.html { render action: 'new' }
        format.json { render json: @fonction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fonctions/1
  # PATCH/PUT /fonctions/1.json
  def update
    respond_to do |format|
      if @fonction.update(fonction_params)
        format.html { redirect_to @fonction, notice: 'Fonction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fonction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fonctions/1
  # DELETE /fonctions/1.json
  def destroy
    @fonction.destroy
    respond_to do |format|
      format.html { redirect_to fonctions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fonction
      @fonction = Fonction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fonction_params
      params.require(:fonction).permit(:libfonction)
    end
end
