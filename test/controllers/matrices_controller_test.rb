require "test_helper"

class MatricesControllerTest < ActionDispatch::IntegrationTest
  test "should get multiply" do
    get matrices_multiply_url
    assert_response :success
  end
end
