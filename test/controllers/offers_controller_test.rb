require "test_helper"

class OffersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get offers_index_url
    assert_response :success
  end
end
