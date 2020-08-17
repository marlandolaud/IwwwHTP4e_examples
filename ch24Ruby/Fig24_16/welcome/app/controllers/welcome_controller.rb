# Fig. 24.14: welcome_controller.rb
# Simple controller that passes a parameter to the view.
class WelcomeController < ApplicationController
   def hello
      @server_name = request.server_software # retrieve software of server
   end # end method hello
end # end class WelcomeController
