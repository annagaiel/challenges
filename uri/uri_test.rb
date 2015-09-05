require 'minitest/autorun'
require_relative 'uri'

class TestUri < Minitest::Test
  def test_uri
    uri = Uri.new("http://foo.com/posts?id=30&limit=5#time=1305298413")
    expected = "http"

    assert_equal expected, uri.host()
  end
end