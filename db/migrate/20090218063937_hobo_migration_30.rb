class HoboMigration30 < ActiveRecord::Migration
  def self.up
    create_table :taskfiles do |t|
      t.integer  :task_id
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    remove_column :tasks, :taskfile_file_size
  end

  def self.down
    add_column :tasks, :taskfile_file_size, :string
    
    drop_table :taskfiles
  end
end
