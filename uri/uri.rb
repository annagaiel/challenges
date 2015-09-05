require 'minitest/autorun'

class Uri

  attr_accessor :uri

  def initialize url
  	@uri  = url
  end

  def to_s
    puts @uri
  end

  # http://rubular.com/
  # https?
  # (?<=.com|.org|.edu)(.*)(?=\?)
  # (?<=\/\/)([^\/]+)
  # (?<=[?]).+(?=#)
  # (?<=#).*

  def host
   @uri[/https?/]
  end

end

uri = Uri.new("http://foo.com/posts?id=30&limit=5#time=1305298413")
uri.host()
uri.to_s()

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
