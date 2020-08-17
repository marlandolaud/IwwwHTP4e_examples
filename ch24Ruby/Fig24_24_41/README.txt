Application Instructions

To run this application:
1. Generate a rails application
   C:\InstantRails\rails_apps> rails MessageBoard
2. Create a new model
   C:\InstantRails\rails_apps> mysqladmin -u root MessageBoard_development
3. Copy/Paste the app, public and db directories to C:\InstantRails\rails_apps\messageboard
4. Perform database migrations.
   C:\InstantRails\rails_apps\messageboard> rake db:migrate
4. Start the application with mongrel
5. Direct your web browser to http://localhost:3000/forums