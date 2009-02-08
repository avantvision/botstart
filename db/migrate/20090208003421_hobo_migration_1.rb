class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.string   :title
      t.integer  :amount
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    create_table :projects do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    create_table :replies do |t|
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    create_table :sites do |t|
      t.string   :name
      t.string   :address
      t.string   :status
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    create_table :tasks do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    create_table :tickets do |t|
      t.string   :name
      t.string   :description
      t.string   :priority
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    create_table :users do |t|
      t.string   :crypted_password, :limit => 40
      t.string   :salt, :limit => 40
      t.string   :remember_token
      t.datetime :remember_token_expires_at
      t.string   :name
      t.string   :email_address
      t.boolean  :administrator, :default => false
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :state, :default => "active"
      t.datetime :key_timestamp
    end
  end

  def self.down
    drop_table :invoices
    drop_table :projects
    drop_table :replies
    drop_table :sites
    drop_table :tasks
    drop_table :tickets
    drop_table :users
  end
end
