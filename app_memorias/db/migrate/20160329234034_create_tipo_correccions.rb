class CreateTipoCorreccions < ActiveRecord::Migration
  def change
    create_table :tipo_correccions do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
