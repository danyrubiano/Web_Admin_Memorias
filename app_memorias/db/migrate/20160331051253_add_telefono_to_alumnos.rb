class AddTelefonoToAlumnos < ActiveRecord::Migration
  def change
    add_column :alumnos, :telefono, :integer
  end
end
