class PollaMundialsController < ApplicationController
  before_action :set_polla_mundial, only: [:show, :edit, :update, :destroy]

  # GET /polla_mundials
  # GET /polla_mundials.json
  def index
    @polla_mundials = PollaMundial.all
  end

  # GET /polla_mundials/1
  # GET /polla_mundials/1.json
  def show
  end

  # GET /polla_mundials/new
  def new
    @polla_mundial = PollaMundial.new
  end

  # GET /polla_mundials/1/edit
  def edit
  end

  # POST /polla_mundials
  # POST /polla_mundials.json
  def create
    @polla_mundial = PollaMundial.new(polla_mundial_params)

    respond_to do |format|
      if @polla_mundial.save
        format.html { redirect_to @polla_mundial, notice: 'Polla mundial was successfully created.' }
        format.json { render :show, status: :created, location: @polla_mundial }
      else
        format.html { render :new }
        format.json { render json: @polla_mundial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /polla_mundials/1
  # PATCH/PUT /polla_mundials/1.json
  def update
    respond_to do |format|
      if @polla_mundial.update(polla_mundial_params)
        format.html { redirect_to @polla_mundial, notice: 'Polla mundial was successfully updated.' }
        format.json { render :show, status: :ok, location: @polla_mundial }
      else
        format.html { render :edit }
        format.json { render json: @polla_mundial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polla_mundials/1
  # DELETE /polla_mundials/1.json
  def destroy
    @polla_mundial.destroy
    respond_to do |format|
      format.html { redirect_to polla_mundials_url, notice: 'Polla mundial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_polla_mundial
      @polla_mundial = PollaMundial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def polla_mundial_params
      params.require(:polla_mundial).permit(:nombre, :colombia, :japon, :polonia, :colombia, :colombia, :senegal)
    end
end
