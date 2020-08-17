# Fig. 24.31: app/models/forum.rb
# Forum model that includes validation and initialization functionality.
class Forum < ActiveRecord::Base
   has_many :messages, :dependent => :destroy 
   validates_presence_of :name
end # class Forum