# Fig. 24.28: db/migrate/002_create_messages.rb
# Database migration script modified to add data to the table.
class CreateMessages < ActiveRecord::Migration
   # create and configure messages table
   def self.up
      create_table :messages do |t|
         t.column :title, :string, :limit => 64
         t.column :author, :string, :limit => 20 
         t.column :created_on, :timestamp
         t.column :email, :string, :limit => 40
         t.column :message, :text
         t.column :forum_id, :integer
      end # do block

      Message.create :title => "Welcome to the Fourth Edition", 
         :author => "Bob Green", 
         :email => "noone@deitel.com",
         :message => "We hope you enjoy the book.",
         :forum_id => 2
   end # method self.up
   
   # remove messages table
   def self.down
      drop_table :messages
   end # method self.down
end # class CreateForums