class CreateDocumentacions < ActiveRecord::Migration
  def change
    create_table :documentacions do |t|
      t.string :nombre
      t.integer :validez_documentacion
      t.references :mem, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
