class AddCoverToDocumentacions < ActiveRecord::Migration
  def change
  	add_attachment :documentacions,:cover
  end
end
