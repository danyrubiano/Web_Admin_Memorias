class CreateCorrectors < ActiveRecord::Migration
  def change
    create_table :correctors do |t|
      t.integer :tipo_corector
      t.references :teacher, index: true, foreign_key: true
      t.references :mem, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
