# Fig. 24.29: app/models/message.rb
# Message Model containing validation and initialization functionality.
class Message < ActiveRecord::Base
   belongs_to :forum # adds a forum method to Message

   # validators (validates automatically before ActiveRecord.save)
   validates_presence_of :title, :author, :email, :message
   validates_format_of :email,                            
      :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
end # class Message