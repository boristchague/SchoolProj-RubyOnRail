require 'test_helper'

class ExampleControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get example_test_url
    assert_response :success
  end

end
