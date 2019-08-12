class DocumentacionsController < ApplicationController
  before_action :set_documentacion, only: [:show, :edit, :update, :destroy]
  before_action :set_mem
  # GET /documentacions
  # GET /documentacions.json
  def index
    @documentacions = Documentacion.all
  end

  # GET /documentacions/1
  # GET /documentacions/1.json
  def show
  end

  # GET /documentacions/new
  def new
    @documentacion = Documentacion.new
  end

  # GET /documentacions/1/edit
  def edit
  end

  # POST /documentacions
  # POST /documentacions.json
  def create
    @documentacion = Documentacion.new(documentacion_params)
    @documentacion.mem = @mem

    respond_to do |format|
      if @documentacion.save
        format.html { redirect_to @documentacion.mem, notice: 'Documentación subida correctamente.' }
        format.json { render :show, status: :created, location: @documentacion }
      else
        #format.html { render :new }
        format.json { render json: @documentacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documentacions/1
  # PATCH/PUT /documentacions/1.json
  def update
    respond_to do |format|
      if @documentacion.update(documentacion_params)
        format.html { redirect_to @documentacion.mem, notice: 'Documentación actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @documentacion }
      else
        format.html { render :edit }
        format.json { render json: @documentacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documentacions/1
  # DELETE /documentacions/1.json
  def destroy
    @documentacion.destroy
    respond_to do |format|
      format.html { redirect_to @mem, notice: 'Documentación eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    def set_mem
      @mem = Mem.find(params[:mem_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_documentacion
      @documentacion = Documentacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def documentacion_params
      params.require(:documentacion).permit(:nombre, :validez_documentacion, :mem_id, :cover)
    end
end
