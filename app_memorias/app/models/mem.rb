class Mem < ActiveRecord::Base
  
  include AASM

  belongs_to :estado
  has_many :topico_asignados, dependent: :destroy
  has_many :topicos, through: :topico_asignados, dependent: :destroy
  has_many :documentacions, dependent: :destroy
  has_many :memorists, dependent: :destroy
  #validates :alumno_id, uniqueness: { scope: :mem_id, message: "Ya tienes una memoria asociada"}

  has_many :alumnos, through: :memorists, dependent: :destroy
  has_many :correctors, dependent: :destroy
  has_many :teachers, through: :correctors, dependent: :destroy
  has_many :correccions, dependent: :destroy

  after_create :save_topicos, :save_alumnos, :save_teachers

  after_update :save_correctores

  def topicos=(value)
  	@topicos = value
  end

  def alumnos=(value)
    @alumnos = value
  end

  def teachers=(value)
    @teachers = value
  end

  aasm column: "state" do
    state :creada, initial: true
    state :guia_asignado
    state :formulario_validado
    state :aceptada
    state :avance_validado
    state :avance_corregido
    state :presentacion_corregida
    state :borrador_validado
    state :borrador_corregido
    state :espera_encuesta
    state :completada
    state :dimitida
    state :cancelada
    state :finalizada

    event :asignar_guia do
      transitions from: :creada, to: :guia_asignado
    end

    event :validar_formulario do
      transitions from: :guia_asignado, to: :formulario_validado
    end

    event :rechazar_formulario do
      transitions from: :formulario_validado, to: :guia_asignado
    end

    event :aceptar do
      transitions from: :formulario_validado, to: :aceptada
    end
    
    event :validar_avance do
      transitions from: :aceptada, to: :avance_validado
    end

    event :corregir_avance do
      transitions from: :avance_validado, to: :avance_corregido
    end

    event :corregir_presentacion do
      transitions from: :avance_corregido, to: :presentacion_corregida
    end

    event :validar_borrador do
      transitions from: :presentacion_corregida, to: :borrador_validado
    end

    event :corregir_borrador do
      transitions from: :borrador_validado, to: :borrador_corregido
    end

    event :esperar_encuesta do
      transitions from: :borrador_corregido, to: :espera_encuesta
    end

    event :completar do
      transitions from: :espera_encuesta, to: :completada
    end

    event :finalizar do
      transitions from: :completada, to: :finalizada
    end

    event :cancelar do
      transitions from: [:creada, :guia_asignado, :formulario_validado, :aceptada, :avance_validado, :avance_corregido, :presentacion_corregida, :borrador_validado, :borrador_corregido, :espera_encuesta, :completada], to: :dimitida
    end

    event :confirmar_cancelacion do
      transitions from: :dimitida, to: :cancelada
    end
  end
  
  private 

  def save_teachers
    tipo_corrector = 1
    @teachers.each do|teacher_id|
      Corrector.create(teacher_id: teacher_id, mem_id: self.id, tipo_corector: tipo_corrector)
    end
  end

  def save_correctores
    tipo_corrector = 2
    if not @teachers.nil?
      @teachers.each do|teacher_id|
        Corrector.create(teacher_id: teacher_id, mem_id: self.id, tipo_corector: tipo_corrector)
      end
    end
  end

  def save_topicos
  	@topicos.each do|topico_id|
  	  TopicoAsignado.create(topico_id: topico_id, mem_id: self.id)
  	end
  end

  def save_alumnos
    @alumnos.each do|alumno_id|
      Memorist.create(alumno_id: alumno_id, mem_id: self.id)
    end
  end
end
