class CannabisController < ApplicationController
  before_action :set_cannabi, only: [:show, :edit, :update, :destroy]

  # GET /cannabis
  # GET /cannabis.json
  def index
    @cannabis = Cannabi.recientes.all
  end

  # GET /cannabis/1
  # GET /cannabis/1.json
  def show
  end

  # GET /cannabis/new
  def new
    @cannabi = Cannabi.new
  end

  # GET /cannabis/1/edit
  def edit
  end

  # POST /cannabis
  # POST /cannabis.json
  def create
    @cannabi = Cannabi.new(cannabi_params)

    respond_to do |format|
      if @cannabi.save
        format.html { redirect_to @cannabi, notice: 'Cannabi was successfully created.' }
        format.json { render :show, status: :created, location: @cannabi }
      else
        format.html { render :new }
        format.json { render json: @cannabi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cannabis/1
  # PATCH/PUT /cannabis/1.json
  def update
    respond_to do |format|
      if @cannabi.update(cannabi_params)
        format.html { redirect_to @cannabi, notice: 'Cannabi was successfully updated.' }
        format.json { render :show, status: :ok, location: @cannabi }
      else
        format.html { render :edit }
        format.json { render json: @cannabi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cannabis/1
  # DELETE /cannabis/1.json
  def destroy
    @cannabi.destroy
    respond_to do |format|
      format.html { redirect_to cannabis_url, notice: 'Cannabi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cannabi
      @cannabi = Cannabi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cannabi_params
      params.require(:cannabi).permit(:sativa, :indica, :interior, :exterior, :usuario_id)
    end
end
