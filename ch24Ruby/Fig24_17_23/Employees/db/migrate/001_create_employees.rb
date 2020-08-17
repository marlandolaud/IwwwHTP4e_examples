# Fig. 24.18: db/migrate/001_create_employees.rb
# Database migration script modified to add data to the table
class CreateEmployees < ActiveRecord::Migration
   # create the table with three columns and insert some rows.
   def self.up
      create_table  :employees do |t| 
         t.column :first_name, :string
         t.column :last_name, :string 
         t.column :job_title, :string 
      end # do block                  

      Employee.create :first_name => "Sue", :last_name => "Green",
         :job_title => "Programmer"                                
      Employee.create :first_name => "Meg", :last_name => "Gold", 
         :job_title => "Programmer"
      Employee.create :first_name => "John", :last_name => "Gray",
         :job_title => "Programmer"
   end # method self.up

   # reverse the migration, delete the table that was created
   def self.down
      drop_table :employees
   end # method self.down
end # class CreateEmployees