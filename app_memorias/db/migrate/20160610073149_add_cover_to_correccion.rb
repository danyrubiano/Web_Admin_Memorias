class AddCoverToCorreccion < ActiveRecord::Migration
  def change
  	add_attachment :correccions,:cover
  end
end
