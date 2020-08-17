# Fig. 24.32: app/models/forum.rb
# Forum model that includes validation and initialization functionality.
class Forum < ActiveRecord::Base
   has_many :messages # create an array of messages
   validates_presence_of :name
end # class Forum