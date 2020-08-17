# Fig. 24.31 db/migrate/003_create_forums.rb
# Database migration script modified to add data to the table.
class CreateForums < ActiveRecord::Migration
   # Create and configure forums table
   def self.up
      create_table :forums do |t|
         t.column :name, :string, :limit => 64
         t.column :administrator, :string, :limit => 20 
         t.column :created_on, :timestamp
      end # do block

      Forum.create :name => "Ruby On Rails", 
          :administrator => "user1" 
      Forum.create :name => "Internet and World Wide Web: 4th Edition", 
         :administrator => "user1"
   end # method self.up

   # remove forums table   
   def self.down
      drop_table :forums
   end # method self.down
end # class CreateForums