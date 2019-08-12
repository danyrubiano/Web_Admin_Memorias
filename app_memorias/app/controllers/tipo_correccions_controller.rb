class TipoCorreccionsController < ApplicationController
  before_action :set_tipo_correccion, only: [:show, :edit, :update, :destroy]

  # GET /tipo_correccions
  # GET /tipo_correccions.json
  def index
    @tipo_correccions = TipoCorreccion.all
  end

  # GET /tipo_correccions/1
  # GET /tipo_correccions/1.json
  def show
  end

  # GET /tipo_correccions/new
  def new
    @tipo_correccion = TipoCorreccion.new
  end

  # GET /tipo_correccions/1/edit
  def edit
  end

  # POST /tipo_correccions
  # POST /tipo_correccions.json
  def create
    @tipo_correccion = TipoCorreccion.new(tipo_correccion_params)

    respond_to do |format|
      if @tipo_correccion.save
        format.html { redirect_to @tipo_correccion, notice: 'Tipo correccion was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_correccion }
      else
        format.html { render :new }
        format.json { render json: @tipo_correccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_correccions/1
  # PATCH/PUT /tipo_correccions/1.json
  def update
    respond_to do |format|
      if @tipo_correccion.update(tipo_correccion_params)
        format.html { redirect_to @tipo_correccion, notice: 'Tipo correccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_correccion }
      else
        format.html { render :edit }
        format.json { render json: @tipo_correccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_correccions/1
  # DELETE /tipo_correccions/1.json
  def destroy
    @tipo_correccion.destroy
    respond_to do |format|
      format.html { redirect_to tipo_correccions_url, notice: 'Tipo correccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_correccion
      @tipo_correccion = TipoCorreccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_correccion_params
      params.require(:tipo_correccion).permit(:nombre)
    end
end
