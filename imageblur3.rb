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

	def blur(y, x, rsize, csize, distance)
		
		i = 1
		while i <= distance  do
			#top
			@image[y - i][x] = 1 if y - i >= 0 
			#bottom
			@image[y + i][x] = 1 if y + i < csize 
			#right
			@image[y][x + i] = 1 if x + i < rsize
			#left
			@image[y][x - i] = 1 if x - i >= 0 
		   
		    i += 1
		end
	end

	# Loop through the image and create the pixel obj
	# where row and column index number is passed.
	def find_ones
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
				blur(pixel.y, pixel.x, rsize, csize, 2)
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
		  [0, 0, 0, 0, 0, 1, 0],
		  [0, 0, 0, 0, 0, 0, 0]
		])
    	image.find_ones
    	expected = [
		  [0, 0, 0, 0, 0, 0, 0],
		  [0, 0, 0, 0, 0, 0, 1],
		  [0, 0, 0, 0, 0, 0, 1],
		  [0, 0, 0, 0, 1, 1, 1],
		  [0, 0, 0, 0, 0, 0, 1],
		  [0, 0, 1, 0, 0, 0, 1],
		  [0, 0, 1, 0, 0, 0, 0],
		  [1, 1, 1, 1, 1, 1, 0],
		  [0, 0, 1, 0, 0, 1, 0],
		  [0, 0, 1, 1, 1, 1, 1],
		  [0, 0, 0, 0, 0, 1, 0]
		]
    	assert_equal expected, image.output_image

	end
end