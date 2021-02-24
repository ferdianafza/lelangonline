require "application_system_test_case"

class PenawaransTest < ApplicationSystemTestCase
  setup do
    @penawaran = penawarans(:one)
  end

  test "visiting the index" do
    visit penawarans_url
    assert_selector "h1", text: "Penawarans"
  end

  test "creating a Penawaran" do
    visit penawarans_url
    click_on "New Penawaran"

    fill_in "Lelang", with: @penawaran.lelang_id
    fill_in "Tawaran", with: @penawaran.tawaran
    fill_in "User", with: @penawaran.user_id
    click_on "Create Penawaran"

    assert_text "Penawaran was successfully created"
    click_on "Back"
  end

  test "updating a Penawaran" do
    visit penawarans_url
    click_on "Edit", match: :first

    fill_in "Lelang", with: @penawaran.lelang_id
    fill_in "Tawaran", with: @penawaran.tawaran
    fill_in "User", with: @penawaran.user_id
    click_on "Update Penawaran"

    assert_text "Penawaran was successfully updated"
    click_on "Back"
  end

  test "destroying a Penawaran" do
    visit penawarans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Penawaran was successfully destroyed"
  end
end
