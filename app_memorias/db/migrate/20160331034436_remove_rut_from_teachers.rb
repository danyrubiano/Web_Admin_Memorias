class RemoveRutFromTeachers < ActiveRecord::Migration
  def change
    remove_column :teachers, :rut_profesor, :string
    remove_column :teachers, :nombre_profesor, :string
    remove_column :teachers, :jornada_profesor, :string
    remove_column :teachers, :telefono1_profesor, :integer
    remove_column :teachers, :telefono2_profesor, :integer
  end
end
