class Joint2sController < ApplicationController
  before_action :set_joint2, only: [:show, :edit, :update, :destroy]

  # GET /joint2s
  # GET /joint2s.json
  def index
    @joint2s = Joint2.all
  end

  # GET /joint2s/1
  # GET /joint2s/1.json
  def show
  end

  # GET /joint2s/new
  def new
    @joint2 = Joint2.new
  end

  # GET /joint2s/1/edit
  def edit
  end

  # POST /joint2s
  # POST /joint2s.json
  def create
    @joint2 = Joint2.new(joint2_params)

    respond_to do |format|
      if @joint2.save
        format.html { redirect_to @joint2, notice: 'Joint2 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @joint2 }
      else
        format.html { render action: 'new' }
        format.json { render json: @joint2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joint2s/1
  # PATCH/PUT /joint2s/1.json
  def update
    respond_to do |format|
      if @joint2.update(joint2_params)
        format.html { redirect_to @joint2, notice: 'Joint2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @joint2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joint2s/1
  # DELETE /joint2s/1.json
  def destroy
    @joint2.destroy
    respond_to do |format|
      format.html { redirect_to joint2s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joint2
      @joint2 = Joint2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joint2_params
      params.require(:joint2).permit(:per_id, :brevet_id, :appointment_date, :name)
    end
end
