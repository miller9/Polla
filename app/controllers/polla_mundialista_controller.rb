class PollaMundialistaController < ApplicationController
  before_action :set_polla_mundialistum, only: [:show, :edit, :update, :destroy]

  # GET /polla_mundialista
  # GET /polla_mundialista.json
  def index
    @polla_mundialista = PollaMundialistum.all
  end

  # GET /polla_mundialista/1
  # GET /polla_mundialista/1.json
  def show
  end

  # GET /polla_mundialista/new
  def new
    @polla_mundialistum = PollaMundialistum.new
  end

  # GET /polla_mundialista/1/edit
  def edit
  end

  # POST /polla_mundialista
  # POST /polla_mundialista.json
  def create
    @polla_mundialistum = PollaMundialistum.new(polla_mundialistum_params)

    respond_to do |format|
      if @polla_mundialistum.save
        format.html { redirect_to @polla_mundialistum, notice: 'Polla mundialistum was successfully created.' }
        format.json { render :show, status: :created, location: @polla_mundialistum }
      else
        format.html { render :new }
        format.json { render json: @polla_mundialistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /polla_mundialista/1
  # PATCH/PUT /polla_mundialista/1.json
  def update
    respond_to do |format|
      if @polla_mundialistum.update(polla_mundialistum_params)
        format.html { redirect_to @polla_mundialistum, notice: 'Polla mundialistum was successfully updated.' }
        format.json { render :show, status: :ok, location: @polla_mundialistum }
      else
        format.html { render :edit }
        format.json { render json: @polla_mundialistum.errors, status: :unprocessable_entity }
      end
    end
  end


=begin
  # DELETE /polla_mundialista/1
  # DELETE /polla_mundialista/1.json
  def destroy
    @polla_mundialistum.destroy
    respond_to do |format|
      format.html { redirect_to polla_mundialista_url, notice: 'Polla mundialistum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
=end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_polla_mundialistum
      @polla_mundialistum = PollaMundialistum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def polla_mundialistum_params
      params.require(:polla_mundialistum).permit(:nombre, :partido, :local, :visitante)
    end
end
