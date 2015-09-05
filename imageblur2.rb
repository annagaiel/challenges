require 'minitest/autorun'
=begin 
Given a black and white image, 
represented as the class you already implemented,
implement a blur method to run a transformation on the image. 
Running the blur transformation causes any 1 in the image to cause 
the pixel to the left, right, above and below to become a 1.
Input:   Output:
0000      0100
0100  =>  1111
0001      0111
0000      0001 

=end
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

	# set the image's surroundings as 1. 
	def blur(y, x, rsize, csize)
		puts "rsize #{rsize}, csize #{csize}"
		#top
		@image[y - 1][x] = 1 if y - 1 >= 0 
		#bottom
		@image[y + 1][x] = 1 if y + 1 < csize 
		#right
		@image[y][x + 1] = 1 if x + 1 < rsize
		#left
		@image[y][x - 1] = 1 if x - 1 >= 0 

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
				blur(pixel.y, pixel.x, rsize, csize)
			end
	end

end

=begin
Each pixel has x and y values.
=end
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
		  [0, 0, 0, 0],
		  [0, 1, 0, 0],
		  [0, 0, 0, 0],
		  [0, 0, 0, 0]
		])
    	image.find_ones
    	expected = [
		  [0, 1, 0, 0],
		  [1, 1, 1, 0],
	      [0, 1, 0, 0],
	      [0, 0, 0, 0]
		]
    	assert_equal expected, image.output_image

	end
end