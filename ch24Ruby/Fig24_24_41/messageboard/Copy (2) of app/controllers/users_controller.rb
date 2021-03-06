# Fig. 24.26: app/controllers/user_controller.rb
# UsersController provides validation functionality for the table.
class UsersController < ApplicationController
   # create a new User object
   def admin
      @user = User.new # create a new User object
   end # method admin

   # validate that user exists
   def validate
        # find a user with the correct name and password
      @user = User.find_by_name_and_password(  params[ :user ][ :name ],                         
        params[ :user ][ :password ]  )  

      if ( @user==nil )  # if the user dosn�t exist
         redirect_to :action => "admin" # redirect to admin action
      else # user does exist
         session[ :user ] = @user # store the user in a session variable
         redirect_to :controller => "forums", :action => "index"
      end # if
   end # method validate

   # log user out
   def logout
      reset_session # delete all session variables
      redirect_to :controller => "forums", :action => "index" # redirect
   end # method logout
end # class UserController