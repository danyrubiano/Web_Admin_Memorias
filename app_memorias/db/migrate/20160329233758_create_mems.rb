class CreateMems < ActiveRecord::Migration
  def change
    create_table :mems do |t|
      t.references :estado, index: true, foreign_key: true
      t.date :fecha_memoria
      t.date :fecha_avance
      t.date :fecha_defensa
      t.date :fecha_limimte

      t.timestamps null: false
    end
  end
end
