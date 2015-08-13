class HottoursController < ApplicationController
  before_action :set_hottour, only: [:show, :edit, :update, :destroy]

  # GET /hottours
  # GET /hottours.json
  def index
    @hottours = Hottour.all
  end

  # GET /hottours/1
  # GET /hottours/1.json
  def show
  end

  # GET /hottours/new
  def new
    @hottour = Hottour.new
  end

  # GET /hottours/1/edit
  def edit
  end

  # POST /hottours
  # POST /hottours.json
  def create
    @hottour = Hottour.new(hottour_params)

    respond_to do |format|
      if @hottour.save
        format.html { redirect_to @hottour, notice: 'Hottour was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hottour }
      else
        format.html { render action: 'new' }
        format.json { render json: @hottour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hottours/1
  # PATCH/PUT /hottours/1.json
  def update
    respond_to do |format|
      if @hottour.update(hottour_params)
        format.html { redirect_to @hottour, notice: 'Hottour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hottour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hottours/1
  # DELETE /hottours/1.json
  def destroy
    @hottour.destroy
    respond_to do |format|
      format.html { redirect_to hottours_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hottour
      @hottour = Hottour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hottour_params
      params.require(:hottour).permit(:name, :price, :imgurl, :about)
    end
end
