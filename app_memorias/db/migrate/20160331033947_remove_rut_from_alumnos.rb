class RemoveRutFromAlumnos < ActiveRecord::Migration
  def change
    remove_column :alumnos, :rut_alumno, :string
    remove_column :alumnos, :nombre_alumno, :string
    remove_column :alumnos, :direccion_alumno, :string
    remove_column :alumnos, :telefono1_alumno, :integer
    remove_column :alumnos, :telefono2_alumno, :integer
    remove_column :alumnos, :anio_egreso, :integer
  end
end
