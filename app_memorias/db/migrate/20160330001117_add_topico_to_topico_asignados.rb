class AddTopicoToTopicoAsignados < ActiveRecord::Migration
  def change
    add_reference :topico_asignados, :topico, index: true, foreign_key: true
  end
end
