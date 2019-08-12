class CorreccionsController < ApplicationController
  before_action :set_correccion, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_teacher!, except:[:show, :index]
  before_action :set_mem

  # GET /correccions
  # GET /correccions.json
  def index
    @correccions = Correccion.all
  end

  # GET /correccions/1
  # GET /correccions/1.json
  def show
    @tipo_correccions = TipoCorreccion.all
  end

  # GET /correccions/new
  def new
    @correccion = Correccion.new
    @tipo_correccions = TipoCorreccion.all
  end

  # GET /correccions/1/edit
  def edit
  end

  # POST /correccions
  # POST /correccions.json
  def create
    #@correccion = Correccion.new(correccion_params)
    @correccion = current_teacher.correccions.new(correccion_params)
    @correccion.mem = @mem
    #@post = current_user.posts.new(post_params)

    respond_to do |format|
      if @correccion.save
        format.html { redirect_to @correccion.mem, notice: 'Corrección realizada correctamente.' }
        format.json { render :show, status: :created, location: @correccion }
      else
        format.html { render :new }
        format.json { render json: @correccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /correccions/1
  # PATCH/PUT /correccions/1.json
  def update
    respond_to do |format|
      if @correccion.update(correccion_params)
        format.html { redirect_to @correccion.mem, notice: 'Corrección actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @correccion }
      else
        format.html { render :edit }
        format.json { render json: @correccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /correccions/1
  # DELETE /correccions/1.json
  def destroy
    @correccion.destroy
    respond_to do |format|
      format.html { redirect_to @mem, notice: 'Corrección eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_mem
      @mem = Mem.find(params[:mem_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_correccion
      @correccion = Correccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def correccion_params
      params.require(:correccion).permit(:tipo_correccion_id, :teacher_id, :mem_id, :validez_correcion, :ruta_correccion, :cover)
    end
end
