class AddTituloToMems < ActiveRecord::Migration
  def change
    add_column :mems, :titulo, :string
  end
end
