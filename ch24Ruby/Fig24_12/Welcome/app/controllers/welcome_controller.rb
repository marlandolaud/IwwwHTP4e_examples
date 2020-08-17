# Fig. 24.12: app/controllers/welcome_controller.rb
# Simple controller that renders a message on a web page.
class WelcomeController < ApplicationController
   # render text in page
   def index
      render_text "<Strong>Welcome to Ruby on Rails!</Strong>"
   end # method index
end # class WelcomeController