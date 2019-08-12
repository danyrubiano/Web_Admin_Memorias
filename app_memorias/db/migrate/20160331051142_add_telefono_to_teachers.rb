class AddTelefonoToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :telefono, :integer
  end
end
