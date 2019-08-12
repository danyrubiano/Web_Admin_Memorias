class AddRutToComision < ActiveRecord::Migration
  def change
  	add_column :comisions, :rut, :string
    add_column :comisions, :nombre, :string
    add_column :comisions, :apellido, :string
    add_column :comisions, :telefono, :integer
  end
end
