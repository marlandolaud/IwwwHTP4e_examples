# Fig. 24.20: app/controllers/employees_controller.rb
# Provides all of the functionality for the application.
class EmployeesController < ApplicationController
   scaffold :employee  # create scaffold code for controller

   # override scaffold list method
   def list 
      @employees = Employee.find( :all ) # return an array of all Employees
   end # method list
end # class EmployeeController