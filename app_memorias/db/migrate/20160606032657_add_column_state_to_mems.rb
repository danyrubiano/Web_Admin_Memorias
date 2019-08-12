class AddColumnStateToMems < ActiveRecord::Migration
  def change
    add_column :mems, :state, :string, default: "creada"
  end
end
