class AddRutToAdministrador < ActiveRecord::Migration
  def change
  	add_column :administradors, :rut, :string
    add_column :administradors, :nombre, :string
    add_column :administradors, :apellido, :string
    add_column :administradors, :telefono, :integer
  end
end
