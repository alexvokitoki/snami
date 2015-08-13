class BustoursController < ApplicationController
  before_action :set_bustour, only: [:show, :edit, :update, :destroy]

  # GET /bustours
  # GET /bustours.json
  def index
    @bustours = Bustour.all
  end

  # GET /bustours/1
  # GET /bustours/1.json
  def show
  end

  # GET /bustours/new
  def new
    @bustour = Bustour.new
  end

  # GET /bustours/1/edit
  def edit
  end

  # POST /bustours
  # POST /bustours.json
  def create
    @bustour = Bustour.new(bustour_params)

    respond_to do |format|
      if @bustour.save
        format.html { redirect_to @bustour, notice: 'Bustour was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bustour }
      else
        format.html { render action: 'new' }
        format.json { render json: @bustour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bustours/1
  # PATCH/PUT /bustours/1.json
  def update
    respond_to do |format|
      if @bustour.update(bustour_params)
        format.html { redirect_to @bustour, notice: 'Bustour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bustour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bustours/1
  # DELETE /bustours/1.json
  def destroy
    @bustour.destroy
    respond_to do |format|
      format.html { redirect_to bustours_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bustour
      @bustour = Bustour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bustour_params
      params.require(:bustour).permit(:name, :price, :imgurl, :about)
    end
end
