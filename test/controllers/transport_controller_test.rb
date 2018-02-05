require 'test_helper'

class TransportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transport_index_url
    assert_response :success
  end

end
