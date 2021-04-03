require 'test_helper'

class LayananControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get layanan_index_url
    assert_response :success
  end

end
