# Fig. 24.14: app/controllers/welcome_controller.rb
# Simple controller that passes a parameter to the view.
class WelcomeController < ApplicationController
   # set server_name to server information
   def hello
      @server_name = request.server_software # retrieve software of server
   end # method hello
end # class WelcomeController