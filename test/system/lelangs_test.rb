require "application_system_test_case"

class LelangsTest < ApplicationSystemTestCase
  setup do
    @lelang = lelangs(:one)
  end

  test "visiting the index" do
    visit lelangs_url
    assert_selector "h1", text: "Lelangs"
  end

  test "creating a Lelang" do
    visit lelangs_url
    click_on "New Lelang"

    fill_in "Barang", with: @lelang.barang_id
    fill_in "Harga akhir", with: @lelang.harga_akhir
    fill_in "Petugas", with: @lelang.petugas_id
    fill_in "Status", with: @lelang.status
    fill_in "Tanggal lelang", with: @lelang.tanggal_lelang
    fill_in "User", with: @lelang.user_id
    click_on "Create Lelang"

    assert_text "Lelang was successfully created"
    click_on "Back"
  end

  test "updating a Lelang" do
    visit lelangs_url
    click_on "Edit", match: :first

    fill_in "Barang", with: @lelang.barang_id
    fill_in "Harga akhir", with: @lelang.harga_akhir
    fill_in "Petugas", with: @lelang.petugas_id
    fill_in "Status", with: @lelang.status
    fill_in "Tanggal lelang", with: @lelang.tanggal_lelang
    fill_in "User", with: @lelang.user_id
    click_on "Update Lelang"

    assert_text "Lelang was successfully updated"
    click_on "Back"
  end

  test "destroying a Lelang" do
    visit lelangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lelang was successfully destroyed"
  end
end
