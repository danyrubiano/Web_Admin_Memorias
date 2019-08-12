class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :nombre
      t.integer :dias

      t.timestamps null: false
    end
  end
end
