# Fig. 24.54: app/controllers/flickr_controller.rb
# Controller for Flickr Photo Viewer
class FlickrController < ApplicationController
   # handle the search request
   def search
      flickr = Flickr.new
      render :partial => "thumbs", 
         :collection => flickr.photos( :tags => params[ :tags ],
         :per_page => params[ :numImages ] )
   end # method search

   # handle the thumbnail click, sets the currentURL variable
   def fullsizeImage
      @currentURL = params[ :imageURL ]
   end # method fullsizeImage
end # class FlickrController