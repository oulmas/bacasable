class BrasseriesController < ApplicationController
  before_action :set_brasseries, only: [:show, :edit, :update, :destroy]

  # GET /brasseries
  # GET /brasseries.json
  def index
    @brasseries = Brasserie.all
  end

  # GET /brasseries/1
  # GET /brasseries/1.json
  def show
  end

  # GET /brasseries/new
  def new
    @brasseries = Brasserie.new
  end

  # GET /brasseries/1/edit
  def edit
  end

  # POST /brasseries
  # POST /brasseries.json
  def create
    @brasseries = Brasserie.new(brasseries_params)

    respond_to do |format|
      if @brasseries.save
        format.html { redirect_to @brasseries, notice: 'Brasserie was successfully created.' }
        format.json { render :show, status: :created, location: @brasseries }
      else
        format.html { render :new }
        format.json { render json: @brasseries.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brasseries/1
  # PATCH/PUT /brasseries/1.json
  def update
    respond_to do |format|
      if @brasseries.update(brasseries_params)
        format.html { redirect_to @brasseries, notice: 'Brasserie was successfully updated.' }
        format.json { render :show, status: :ok, location: @brasseries }
      else
        format.html { render :edit }
        format.json { render json: @brasseries.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brasseries/1
  # DELETE /brasseries/1.json
  def destroy
    @brasseries.destroy
    respond_to do |format|
      format.html { redirect_to brasseries_url, notice: 'Brasserie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brasseries
      @brasseries = Brasserie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brasseries_params
      params.require(:brasseries).permit(:nom, :desc)
    end
end
