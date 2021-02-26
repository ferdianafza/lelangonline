require "application_system_test_case"

class PemenangsTest < ApplicationSystemTestCase
  setup do
    @pemenang = pemenangs(:one)
  end

  test "visiting the index" do
    visit pemenangs_url
    assert_selector "h1", text: "Pemenangs"
  end

  test "creating a Pemenang" do
    visit pemenangs_url
    click_on "New Pemenang"

    fill_in "Harga", with: @pemenang.harga
    fill_in "Lelang", with: @pemenang.lelang_id
    fill_in "User", with: @pemenang.user_id
    click_on "Create Pemenang"

    assert_text "Pemenang was successfully created"
    click_on "Back"
  end

  test "updating a Pemenang" do
    visit pemenangs_url
    click_on "Edit", match: :first

    fill_in "Harga", with: @pemenang.harga
    fill_in "Lelang", with: @pemenang.lelang_id
    fill_in "User", with: @pemenang.user_id
    click_on "Update Pemenang"

    assert_text "Pemenang was successfully updated"
    click_on "Back"
  end

  test "destroying a Pemenang" do
    visit pemenangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pemenang was successfully destroyed"
  end
end
