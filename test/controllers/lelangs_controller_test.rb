require 'test_helper'

class LelangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lelang = lelangs(:one)
  end

  test "should get index" do
    get lelangs_url
    assert_response :success
  end

  test "should get new" do
    get new_lelang_url
    assert_response :success
  end

  test "should create lelang" do
    assert_difference('Lelang.count') do
      post lelangs_url, params: { lelang: { barang_id: @lelang.barang_id, harga_akhir: @lelang.harga_akhir, petugas_id: @lelang.petugas_id, status: @lelang.status, tanggal_lelang: @lelang.tanggal_lelang, user_id: @lelang.user_id } }
    end

    assert_redirected_to lelang_url(Lelang.last)
  end

  test "should show lelang" do
    get lelang_url(@lelang)
    assert_response :success
  end

  test "should get edit" do
    get edit_lelang_url(@lelang)
    assert_response :success
  end

  test "should update lelang" do
    patch lelang_url(@lelang), params: { lelang: { barang_id: @lelang.barang_id, harga_akhir: @lelang.harga_akhir, petugas_id: @lelang.petugas_id, status: @lelang.status, tanggal_lelang: @lelang.tanggal_lelang, user_id: @lelang.user_id } }
    assert_redirected_to lelang_url(@lelang)
  end

  test "should destroy lelang" do
    assert_difference('Lelang.count', -1) do
      delete lelang_url(@lelang)
    end

    assert_redirected_to lelangs_url
  end
end
