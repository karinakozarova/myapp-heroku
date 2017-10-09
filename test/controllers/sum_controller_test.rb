require 'test_helper'

class SumControllerTest < ActionDispatch::IntegrationTest
  test "should get sum" do
    get sum_sum_url
    assert_response :success
  end

end
