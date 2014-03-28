# This migration comes from refinery_contacts (originally 4)
class AddHomepageToContacts < ActiveRecord::Migration

  def up
    add_column :refinery_contacts, :homepage, :string
  end

  def down
    remove_column :refinery_contacts, :homepage, :string
  end

end