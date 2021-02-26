require "application_system_test_case"

class HasilLelelangsTest < ApplicationSystemTestCase
  setup do
    @hasil_lelelang = hasil_lelelangs(:one)
  end

  test "visiting the index" do
    visit hasil_lelelangs_url
    assert_selector "h1", text: "Hasil Lelelangs"
  end

  test "creating a Hasil lelelang" do
    visit hasil_lelelangs_url
    click_on "New Hasil Lelelang"

    fill_in "Harga", with: @hasil_lelelang.harga
    fill_in "Lelang", with: @hasil_lelelang.lelang_id
    fill_in "User", with: @hasil_lelelang.user_id
    click_on "Create Hasil lelelang"

    assert_text "Hasil lelelang was successfully created"
    click_on "Back"
  end

  test "updating a Hasil lelelang" do
    visit hasil_lelelangs_url
    click_on "Edit", match: :first

    fill_in "Harga", with: @hasil_lelelang.harga
    fill_in "Lelang", with: @hasil_lelelang.lelang_id
    fill_in "User", with: @hasil_lelelang.user_id
    click_on "Update Hasil lelelang"

    assert_text "Hasil lelelang was successfully updated"
    click_on "Back"
  end

  test "destroying a Hasil lelelang" do
    visit hasil_lelelangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hasil lelelang was successfully destroyed"
  end
end
