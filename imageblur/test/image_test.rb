require 'minitest/autorun'
require_relative '../image'

class TestImage < Minitest::Unit::TestCase
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

  def test_image2
	image2 = Image.new([
	  [0, 0, 0, 0],
	  [0, 1, 0, 0],
	  [0, 0, 0, 0],
	  [0, 0, 0, 0]
	])
	image2.blur(2)

	expected = [
	  [0, 1, 0, 0],
	  [1, 1, 1, 1],
      [0, 1, 0, 0],
      [0, 1, 0, 0]
	]
	assert_equal expected, image2.output_image
  end
  
  def test_image3
    image3 = Image.new([
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
    image3.blur(3)
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
    assert_equal expected, image3.output_image
	end
end
