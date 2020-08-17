# Fig. 24.23: db/migrate/001_create_users.rb
# Database migration script modified to add data to the table.
class CreateUsers < ActiveRecord::Migration
   # create and configure users table
   def self.up
      create_table :users do |t|
         t.column :name, :string, :limit => 11  
         t.column :password, :string
      end # function create_table
      
      User.create :name => "user1", :password => "54321"
   end # function self.up

   # remove users table
   def self.down
      drop_table :users
   end # method self.down
end # class CreateUsers