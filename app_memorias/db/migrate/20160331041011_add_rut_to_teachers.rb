class AddRutToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :rut, :string
    add_column :teachers, :nombre, :string
    add_column :teachers, :apellido, :string
    add_column :teachers, :telefono, :double
  end
end
