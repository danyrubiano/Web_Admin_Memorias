class AddRutToAlumnos < ActiveRecord::Migration
  def change
    add_column :alumnos, :rut, :string
    add_column :alumnos, :nombre, :string
    add_column :alumnos, :apellido, :string
    add_column :alumnos, :telefono, :double
  end
end
