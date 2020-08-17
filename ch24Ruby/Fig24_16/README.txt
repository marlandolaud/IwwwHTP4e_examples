Fig. 27.10 Application Instructions

To run this application:
1. Generate a rails application
   C:\Instant Rails\rails_apps> rails Welcome
2. Generate a welcome controller
   C:\welcome>  ruby script/generate controller welcome
3. copy/paste welcome_controller.rb into Welcome/app/controllers/
4. copy/paste hello.rhtml into welcome/app/views/welcome
5. copy/paste welcome.rhtml into welcome/app/views/layouts
6. Start the application with Mongrel
7. Direct your web browser to http://localhost:3000/welcome/hello