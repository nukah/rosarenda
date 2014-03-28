# This migration comes from refinery_sites (originally 20110418095626)
class CreateHostnames < ActiveRecord::Migration
  def self.up
    create_table :refinery_hostnames do |t|
      t.string :hostname
      t.integer :site_id
      t.timestamps
    end
  end

  def self.down
    drop_table :refinery_hostnames
  end
end
