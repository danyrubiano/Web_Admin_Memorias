class RemoveTelefonoFromAlumnos < ActiveRecord::Migration
  def change
    remove_column :alumnos, :telefono, :float
  end
end
