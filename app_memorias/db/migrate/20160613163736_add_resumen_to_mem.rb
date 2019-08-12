class AddResumenToMem < ActiveRecord::Migration
  def change
  	add_column :mems, :resumen_ejecutivo, :text
  end
end
