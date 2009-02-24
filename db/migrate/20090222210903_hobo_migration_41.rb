class HoboMigration41 < ActiveRecord::Migration
  def self.up
    add_column :tickets, :ticketfile_file_name, :string
    add_column :tickets, :ticketfile_content_type, :string
    add_column :tickets, :ticketfile_file_size, :string
  end

  def self.down
    remove_column :tickets, :ticketfile_file_name
    remove_column :tickets, :ticketfile_content_type
    remove_column :tickets, :ticketfile_file_size
  end
end
