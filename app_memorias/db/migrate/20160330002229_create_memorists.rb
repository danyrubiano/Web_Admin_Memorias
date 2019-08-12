class CreateMemorists < ActiveRecord::Migration
  def change
    create_table :memorists do |t|
      t.references :mem, index: true, foreign_key: true
      t.references :alumno, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
