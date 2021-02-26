require 'test_helper'

class HasilLelelangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hasil_lelelang = hasil_lelelangs(:one)
  end

  test "should get index" do
    get hasil_lelelangs_url
    assert_response :success
  end

  test "should get new" do
    get new_hasil_lelelang_url
    assert_response :success
  end

  test "should create hasil_lelelang" do
    assert_difference('HasilLelelang.count') do
      post hasil_lelelangs_url, params: { hasil_lelelang: { harga: @hasil_lelelang.harga, lelang_id: @hasil_lelelang.lelang_id, user_id: @hasil_lelelang.user_id } }
    end

    assert_redirected_to hasil_lelelang_url(HasilLelelang.last)
  end

  test "should show hasil_lelelang" do
    get hasil_lelelang_url(@hasil_lelelang)
    assert_response :success
  end

  test "should get edit" do
    get edit_hasil_lelelang_url(@hasil_lelelang)
    assert_response :success
  end

  test "should update hasil_lelelang" do
    patch hasil_lelelang_url(@hasil_lelelang), params: { hasil_lelelang: { harga: @hasil_lelelang.harga, lelang_id: @hasil_lelelang.lelang_id, user_id: @hasil_lelelang.user_id } }
    assert_redirected_to hasil_lelelang_url(@hasil_lelelang)
  end

  test "should destroy hasil_lelelang" do
    assert_difference('HasilLelelang.count', -1) do
      delete hasil_lelelang_url(@hasil_lelelang)
    end

    assert_redirected_to hasil_lelelangs_url
  end
end
