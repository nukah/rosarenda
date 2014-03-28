# This migration comes from refinery_sites (originally 20110418095543)
class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :refinery_sites do |t|
      t.string :name
      t.integer :page_id
      t.string :stylesheet
      t.timestamps
    end
  end

  def self.down
    drop_table :refinery_sites
  end
end
