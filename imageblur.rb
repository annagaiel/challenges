require 'minitest/autorun'
=begin 
Build a class that allows us to build a new image with the data we specify. 
Make it possible for the class to output the image to the screen.

I:
image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image

O:
0000
0100
0001
0000
=end

class Image

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

end

class TestImage < Minitest::Test
	def test_image
    	image = Image.new([
		  [0, 0, 0, 0],
		  [0, 1, 0, 0],
		  [0, 0, 0, 1],
		  [0, 0, 0, 0]
		])
    	expected = [
		  [0, 0, 0, 0],
		  [0, 1, 0, 0],
		  [0, 0, 0, 1],
		  [0, 0, 0, 0]
		]
    	assert_equal expected, image.output_image

	end
end
