class RemoveTelefonoFromTeachers < ActiveRecord::Migration
  def change
    remove_column :teachers, :telefono, :float
  end
end
