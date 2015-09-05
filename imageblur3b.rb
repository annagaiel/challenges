require 'minitest/autorun'

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

class Pixel
  attr_accessor :x, :y
  
  def initialize(x, y)
	@x = x
	@y = y
  end
end

class TestImage < Minitest::Test
  def test_image
    image = Image.new([
	  [0, 0, 0, 0, 0, 0, 0],
	  [0, 0, 0, 0, 0, 0, 0],
	  [0, 0, 0, 0, 0, 0, 0],
	  [0, 0, 0, 0, 0, 0, 1],
	  [0, 0, 0, 0, 0, 0, 0],
	  [0, 0, 0, 0, 0, 0, 0],
	  [0, 0, 0, 0, 0, 0, 0],
	  [0, 0, 1, 0, 0, 0, 0],
	  [0, 0, 0, 0, 0, 0, 0],
	  [0, 0, 0, 0, 0, 0, 0],
	  [0, 0, 0, 0, 0, 0, 0]
	])
    image.blur(3)
    expected = [
	  [0, 0, 0, 0, 0, 0, 1],
	  [0, 0, 0, 0, 0, 0, 1],
	  [0, 0, 0, 0, 0, 0, 1],
      [0, 0, 0, 1, 1, 1, 1],
	  [0, 0, 1, 0, 0, 0, 1],
	  [0, 0, 1, 0, 0, 0, 1],
	  [0, 0, 1, 0, 0, 0, 1],
	  [1, 1, 1, 1, 1, 1, 0],
	  [0, 0, 1, 0, 0, 0, 0],
	  [0, 0, 1, 0, 0, 0, 0],
	  [0, 0, 1, 0, 0, 0, 0]
	]
    assert_equal expected, image.output_image
	end
end