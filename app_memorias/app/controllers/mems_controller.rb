class MemsController < ApplicationController
  before_action :set_mem, only: [:show, :edit, :update, :destroy, :asignar_guia, :validar_formulario, :rechazar_formulario, :aceptar, :validar_avance, :corregir_avance, :corregir_presentacion, :validar_borrador, :corregir_borrador, :esperar_encuesta, :completar, :finalizar, :cancelar, :confirmar_cancelacion]

  # GET /mems
  # GET /mems.json
  def index
    @mems = Mem.all
    @alumnos = Alumno.all
    @estados = Estado.all
    @teachers = Teacher.all
     @correctors = Corrector.all
  end

  # GET /mems/1
  # GET /mems/1.json
  def show
    @documentacion = Documentacion.new
    @correccion = Correccion.new
    @topicos = Topico.all
    @alumnos = Alumno.all
    @estados = Estado.all
    @teachers = Teacher.all
    @correccions = Correccion.all
    @tipo_correccions = TipoCorreccion.all
    @correctors = Corrector.all
  end

  # GET /mems/new
  def new
    @mem = Mem.new
    @topicos = Topico.all
    @alumnos = Alumno.all
    @estados = Estado.all
    @teachers = Teacher.all
    @tipo_correccions = TipoCorreccion.all
  end

  # GET /mems/1/edit
  def edit
    @topicos = Topico.all
    @alumnos = Alumno.all
    @estados = Estado.all
    @teachers = Teacher.all
    @tipo_correccions = TipoCorreccion.all
  end

  # POST /mems
  # POST /mems.json
  def create
    @mem = Mem.new(mem_params)
    @mem.topicos = params[:topicos]
    @mem.alumnos = params[:alumnos]
    @mem.teachers = params[:teachers]

    respond_to do |format|
      if @mem.save
        format.html { redirect_to @mem, notice: 'Memoria creada correctamente.' }
        format.json { render :show, status: :created, location: @mem }
      else
        format.html { render :new }
        format.json { render json: @mem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mems/1
  # PATCH/PUT /mems/1.json
  def update
    respond_to do |format|
      if @mem.update(mem_params)
        format.html { redirect_to @mem, notice: 'Memoria actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @mem }
      else
        format.html { render :edit }
        format.json { render json: @mem.errors, status: :unprocessable_entity }
      end
    end
  end

  def asignar_guia
    @mem.asignar_guia!
    redirect_to @mem
  end

  def validar_formulario
    @mem.validar_formulario!
    redirect_to @mem
    flash.notice = "Memoria con formulario validado."
  end

  def aceptar
    @mem.aceptar!
    redirect_to @mem
    flash.notice = "Memoria aceptada."
  end

  def validar_avance
    @mem.validar_avance!
    redirect_to @mem
    flash.notice = "Memoria con avance validado."
  end

  def corregir_avance
    @mem.corregir_avance!
    redirect_to @mem
    flash.notice = "Memoria con avance corregido."
  end

  def corregir_presentacion
    @mem.corregir_presentacion!
    redirect_to @mem
    flash.notice = "Memoria con presentación corregida."
  end

  def validar_borrador
    @mem.validar_borrador!
    redirect_to @mem
    flash.notice = "Memoriacon borrador validado."
  end

  def corregir_borrador
    @mem.corregir_borrador!
    redirect_to @mem
    flash.notice = "Memoria con borrador corregido."
  end

  def esperar_encuesta
    @mem.esperar_encuesta!
    redirect_to @mem
    flash.notice = "Memoria esperando encuesta."
  end

  def completar
    @mem.completar!
    redirect_to @mem
    flash.notice = "Memoria completada."
  end

  def finalizar
    @mem.finalizar!
    redirect_to @mem
    flash.notice = "Memoria finalizada."
  end

  def cancelar
    @mem.cancelar!
    redirect_to @mem
    flash.notice = "Memoria en proceso de cancelación"
  end

  def confirmar_cancelacion
    @mem.confirmar_cancelacion!
    redirect_to @mem
    flash.notice = "Memoria cancelada."
  end

  def rechazar_formulario
    @mem.rechazar_formulario!
    redirect_to @mem
    flash.notice = "Formulario rechazado."
  end
  
  def formularioTitulacion1
    send_file(
      "#{Rails.root}/public/presentacion_proyecto_de_titulacion.pdf",
      filename: "presentacion_proyecto_de_titulacion.pdf",
      type: "application/pdf"
    )
  end

  def formularioTitulacion2
    send_file(
      "#{Rails.root}/public/solicitud_inscripcion_tema.pdf",
      filename: "solicitud_inscripcion_tema.pdf",
      type: "application/pdf"
    )
  end

  # DELETE /mems/1
  # DELETE /mems/1.json
  def destroy
    @mem.destroy
    respond_to do |format|
      format.html { redirect_to mems_url, notice: 'Memoria eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mem
      @mem = Mem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mem_params
      params.require(:mem).permit(:titulo, :estado_id, :fecha_memoria, :fecha_avance, :fecha_defensa, :fecha_limimte, :topicos, :alumnos, :teachers, :resumen_ejecutivo)
    end
end
