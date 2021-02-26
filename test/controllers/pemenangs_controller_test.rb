require 'test_helper'

class PemenangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pemenang = pemenangs(:one)
  end

  test "should get index" do
    get pemenangs_url
    assert_response :success
  end

  test "should get new" do
    get new_pemenang_url
    assert_response :success
  end

  test "should create pemenang" do
    assert_difference('Pemenang.count') do
      post pemenangs_url, params: { pemenang: { harga: @pemenang.harga, lelang_id: @pemenang.lelang_id, user_id: @pemenang.user_id } }
    end

    assert_redirected_to pemenang_url(Pemenang.last)
  end

  test "should show pemenang" do
    get pemenang_url(@pemenang)
    assert_response :success
  end

  test "should get edit" do
    get edit_pemenang_url(@pemenang)
    assert_response :success
  end

  test "should update pemenang" do
    patch pemenang_url(@pemenang), params: { pemenang: { harga: @pemenang.harga, lelang_id: @pemenang.lelang_id, user_id: @pemenang.user_id } }
    assert_redirected_to pemenang_url(@pemenang)
  end

  test "should destroy pemenang" do
    assert_difference('Pemenang.count', -1) do
      delete pemenang_url(@pemenang)
    end

    assert_redirected_to pemenangs_url
  end
end
