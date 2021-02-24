require 'test_helper'

class PenawaransControllerTest < ActionDispatch::IntegrationTest
  setup do
    @penawaran = penawarans(:one)
  end

  test "should get index" do
    get penawarans_url
    assert_response :success
  end

  test "should get new" do
    get new_penawaran_url
    assert_response :success
  end

  test "should create penawaran" do
    assert_difference('Penawaran.count') do
      post penawarans_url, params: { penawaran: { lelang_id: @penawaran.lelang_id, tawaran: @penawaran.tawaran, user_id: @penawaran.user_id } }
    end

    assert_redirected_to penawaran_url(Penawaran.last)
  end

  test "should show penawaran" do
    get penawaran_url(@penawaran)
    assert_response :success
  end

  test "should get edit" do
    get edit_penawaran_url(@penawaran)
    assert_response :success
  end

  test "should update penawaran" do
    patch penawaran_url(@penawaran), params: { penawaran: { lelang_id: @penawaran.lelang_id, tawaran: @penawaran.tawaran, user_id: @penawaran.user_id } }
    assert_redirected_to penawaran_url(@penawaran)
  end

  test "should destroy penawaran" do
    assert_difference('Penawaran.count', -1) do
      delete penawaran_url(@penawaran)
    end

    assert_redirected_to penawarans_url
  end
end
