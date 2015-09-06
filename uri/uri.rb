require 'minitest/autorun'

class Uri

  attr_accessor :uri

  def initialize url
  	@uri  = url
  end

  def to_s
    @uri
  end

  def scheme
    @uri[0..@uri.index(":") - 1]
  end

  def host
    starting = @uri.index("://") + 3
    ending   = @uri.index("/", starting)
    @uri[starting..ending - 1]
  end

  def path
    previous = @uri.index("://") + 3
    starting = @uri.index("/", previous)
    @uri[starting..@uri.index("?") - 1]
  end

  def query
    @uri[@uri.index("?") + 1..@uri.index("#") - 1]
  end

  def fragment
    @uri[@uri.index("#") + 1..@uri.size - 1]
  end

end

=begin
Write a class to parse a URL.  It should provide the same functionality as ruby's built in URI parser.  
Example code for a working example would be like this:

uri = URI("http://foo.com/posts?id=30&limit=5#time=1305298413")
#=> #<URI::HTTP:0x00000000b14880
      URL:http://foo.com/posts?id=30&limit=5#time=1305298413>
uri.scheme
#=> "http"
uri.host
#=> "foo.com"
uri.path
#=> "/posts"
uri.query
#=> "id=30&limit=5"
uri.fragment
#=> "time=1305298413"
uri.to_s
#=> "http://foo.com/posts?id=30&limit=5#time=1305298413"
=end
