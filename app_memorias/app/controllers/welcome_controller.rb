class WelcomeController < ApplicationController
  def index
  end

  def perfil
  	@teachers = Teacher.all
  	@alumnos = Alumno.all
    @administradors = Administrador.all
    @comisions = Comision.all
    @coordinadors = Coordinador.all
  end

  def profesores
  	@teachers = Teacher.all
    @evaluacions = Evaluacion.all
  end

  def alum
  	@alumnos = Alumno.all
    @mems = Mem.all
  end

  def coordinadores
    @coordinadors = Coordinador.all
  end

  def comisiones
    @comisions = Comision.all
  end
end
