class CreateTopicoTeachers < ActiveRecord::Migration
  def change
    create_table :topico_teachers do |t|
      t.references :topico, index: true, foreign_key: true
      t.references :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
