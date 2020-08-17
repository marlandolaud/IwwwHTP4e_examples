Application Instructions

To run this application:
1. Generate a rails application
   C:\Instant Rails\rails_apps> rails Employees
2. Create a database Employees_development
   C:\Instant Rails\rails_apps> mysqladmin -u root Employees_development
3. Create the Model by typing 
   C:\Instant Rails\rails_apps\Employees> ruby script/generate model employee
5. Copy the db and app section of this example into the application folder
6. Run the migrations
   C:\Instant Rails\rails_apps\Employees> rake db:migrate
7. Direct your web browser to http://localhost:3000/employees/list