require "application_system_test_case"

class DonatsTest < ApplicationSystemTestCase
  setup do
    @donat = donats(:one)
  end

  test "visiting the index" do
    visit donats_url
    assert_selector "h1", text: "Donats"
  end

  test "creating a Donat" do
    visit donats_url
    click_on "New Donat"

    fill_in "Description", with: @donat.description
    fill_in "Name", with: @donat.name
    fill_in "Picture Url", with: @donat.picture_url
    click_on "Create Donat"

    assert_text "Donat was successfully created"
    click_on "Back"
  end

  test "updating a Donat" do
    visit donats_url
    click_on "Edit", match: :first

    fill_in "Description", with: @donat.description
    fill_in "Name", with: @donat.name
    fill_in "Picture Url", with: @donat.picture_url
    click_on "Update Donat"

    assert_text "Donat was successfully updated"
    click_on "Back"
  end

  test "destroying a Donat" do
    visit donats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Donat was successfully destroyed"
  end
end
