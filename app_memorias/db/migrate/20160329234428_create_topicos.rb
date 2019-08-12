class CreateTopicos < ActiveRecord::Migration
  def change
    create_table :topicos do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
