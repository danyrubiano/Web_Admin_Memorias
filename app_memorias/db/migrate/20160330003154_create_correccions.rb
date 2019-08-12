class CreateCorreccions < ActiveRecord::Migration
  def change
    create_table :correccions do |t|
      t.references :tipo_correccion, index: true, foreign_key: true
      t.references :teacher, index: true, foreign_key: true
      t.references :mem, index: true, foreign_key: true
      t.integer :validez_correcion
      t.text :ruta_correccion

      t.timestamps null: false
    end
  end
end
