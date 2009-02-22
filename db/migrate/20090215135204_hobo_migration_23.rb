class HoboMigration23 < ActiveRecord::Migration
  def self.up
    remove_column :tickets, :date
  end

  def self.down
    add_column :tickets, :date, :datetime
  end
end
