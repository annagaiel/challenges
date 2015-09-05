require_relative 'pixel'

class Image

  attr_accessor :image

  def initialize(image)
    @image = image
  end

  def output_image
  	@image.each do |row|
	  row.each do |column|
	    print column
	  end
	  puts 
  	end
  end
 
  def blur(distance)

	copy = []
	rsize = 0 
	csize = 0

	@image.each_with_index do |row, y|
	  row.each_with_index do |column, x|
		if column == 1
			copy.push(Pixel.new(x,y))
		end 
	  end
	  rsize = row.size
	end

	csize = image.size

	copy.each do |pixel|
	  i = 1
	  while i <= distance  do
		#top
		@image[pixel.y - i][pixel.x] = 1 if pixel.y - i >= 0 
		#bottom
		@image[pixel.y + i][pixel.x] = 1 if pixel.y + i < csize 
		#right
		@image[pixel.y][pixel.x + i] = 1 if pixel.x + i < rsize
		#left
		@image[pixel.y][pixel.x - i] = 1 if pixel.x - i >= 0 
	   
	    i += 1
	  end
	end

  end

end