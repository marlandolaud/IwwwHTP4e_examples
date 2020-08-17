# Fig. 24.9: Classes.rb
# A Ruby class.
class Point
   @@num_points = 0 # initialize numPoints

   # create a new Point object
   def initialize(x, y)
      @x = x # initialize x-coordinate
      @y = y # initialize y-coordinate
      @@num_points +=1  # increment numPoints counter
   end # method initialize

   # return a string containing the x-y values
   def to_s
      return "x: #{@x}; y: #{@y}"
   end # method to_s

   # return how many Points have been instantiated
   def num_points
      return @@num_points
   end # method numPoints
end # class Point

p = Point.new( 8, 9 ) # instantiate a Point
q = Point.new( 1, 1 ) # instantiate another Point
puts "the value of p is '#{p}'"
puts "the value of q is '#{q}'"
puts "the number of points created is #{p.num_points}"