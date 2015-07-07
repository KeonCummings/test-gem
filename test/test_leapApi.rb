require 'minitest/autorun'
require 'leapApi'

class TestApi < Minitest::Unit::TestCase
  def setup
    @validUrl = LeapApi.new("http://jsonplaceholder.typicode.com/posts/1")
    @invalidUrl = LeapApi.new("http://not_real.com/customer_scoring?income=50000&zipcode=60201&age=35")
  end

  def test_api_fail
    assert_nil @invalidUrl.getResponse
  end

  def test_api_success
    refute_nil @validUrl.getResponse
  end

  def test_subset_json
    assert_instance_of Fixnum, @validUrl.response["id"]
  end
end