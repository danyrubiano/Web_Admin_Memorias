class CreateEvaluacions < ActiveRecord::Migration
  def change
    create_table :evaluacions do |t|
      t.references :teacher, index: true, foreign_key: true
      t.references :alumno, index: true, foreign_key: true
      t.float :nota

      t.timestamps null: false
    end
  end
end
