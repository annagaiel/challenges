require 'minitest/autorun'
require_relative 'uri'

class TestUri < Minitest::Unit::TestCase
  def test_scheme
    uri = Uri.new("http://foo.com/posts?id=30&limit=5#time=1305298413")
    expected = "http"

    assert_equal expected, uri.scheme()
  end

  def test_host
    uri = Uri.new("http://foo.com/posts?id=30&limit=5#time=1305298413")
    expected = "foo.com"
	assert_equal expected, uri.host()
  end

  def test_path
    uri = Uri.new("http://foo.com/posts?id=30&limit=5#time=1305298413")
    expected = "/posts"
	assert_equal expected, uri.path()
  end

  def test_query
    uri = Uri.new("http://foo.com/posts?id=30&limit=5#time=1305298413")
    expected = "id=30&limit=5"
	assert_equal expected, uri.query()
   end

  def test_fragment
    uri = Uri.new("http://foo.com/posts?id=30&limit=5#time=1305298413")
    expected = "time=1305298413"
    assert_equal expected, uri.fragment()
  end

end