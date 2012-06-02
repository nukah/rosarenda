class UpdateObjects < ActiveRecord::Migration
  def up
    change_column :refinery_objects, :space, :string
    change_column :refinery_objects, :floor, :string
  end

  def down
    change_column :refinery_objects, :space, :integer
    change_column :refinery_objects, :floor, :integer
  end
end
