class RemoveTeacherFromTopicoAsignados < ActiveRecord::Migration
  def change
    remove_reference :topico_asignados, :teacher, index: true, foreign_key: true
  end
end
