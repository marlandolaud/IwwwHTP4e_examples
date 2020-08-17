# Fig. 24.26: app/controllers/user_controller.rb
# UserController provides validation functionality for the table.
class UserController < ApplicationController
   # create a new User object
   def admin
      @user = User.new # create a new User object
   end # method admin

   # validate that user exists
   def validate
      myUser = User.new( params[ :user ] ) # create a User with parameters
      # find a user with the correct name and password
      @user = User.find( :first, { :conditions => 
         [ "name = ? AND password = ?", myUser.name, myUser.password ] } )

      if ( @user == nil )  # if the user dosn’t exist
         redirect_to :action => "admin" # redirect to admin action
      else # user does exist
         session[ :user ] = myUser # store the user in a session variable
         redirect_to :controller => "forums", :action => "index"
      end # if
   end # method validate

   # log user out
   def logout
      reset_session # delete all session variables
      redirect_to :controller => "forums", :action => "index" # redirect
   end # method logout
end # class UserController