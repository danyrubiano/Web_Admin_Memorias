class CreateTopicoAsignados < ActiveRecord::Migration
  def change
    create_table :topico_asignados do |t|
      t.references :mem, index: true, foreign_key: true
      t.references :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
