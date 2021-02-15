require "application_system_test_case"

class BarangsTest < ApplicationSystemTestCase
  setup do
    @barang = barangs(:one)
  end

  test "visiting the index" do
    visit barangs_url
    assert_selector "h1", text: "Barangs"
  end

  test "creating a Barang" do
    visit barangs_url
    click_on "New Barang"

    fill_in "Deskripsi barang", with: @barang.deskripsi_barang
    fill_in "Harga awal", with: @barang.harga_awal
    fill_in "Nama barang", with: @barang.nama_barang
    fill_in "Tanggal", with: @barang.tanggal
    click_on "Create Barang"

    assert_text "Barang was successfully created"
    click_on "Back"
  end

  test "updating a Barang" do
    visit barangs_url
    click_on "Edit", match: :first

    fill_in "Deskripsi barang", with: @barang.deskripsi_barang
    fill_in "Harga awal", with: @barang.harga_awal
    fill_in "Nama barang", with: @barang.nama_barang
    fill_in "Tanggal", with: @barang.tanggal
    click_on "Update Barang"

    assert_text "Barang was successfully updated"
    click_on "Back"
  end

  test "destroying a Barang" do
    visit barangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Barang was successfully destroyed"
  end
end
