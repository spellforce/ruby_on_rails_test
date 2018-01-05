require 'test_helper'

class AddCControllerTest < ActionDispatch::IntegrationTest
  test "should get add_course" do
    get add_c_add_course_url
    assert_response :success
  end

end
