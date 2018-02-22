require "application_system_test_case"

class GooglesTest < ApplicationSystemTestCase
  setup do
    @google = googles(:one)
  end

  test "visiting the index" do
    visit googles_url
    assert_selector "h1", text: "Googles"
  end

  test "creating a Google" do
    visit googles_url
    click_on "New Google"

    fill_in "Body", with: @google.body
    fill_in "Image Url", with: @google.image_url
    fill_in "Source", with: @google.source
    fill_in "Title", with: @google.title
    fill_in "Title Url", with: @google.title_url
    click_on "Create Google"

    assert_text "Google was successfully created"
    click_on "Back"
  end

  test "updating a Google" do
    visit googles_url
    click_on "Edit", match: :first

    fill_in "Body", with: @google.body
    fill_in "Image Url", with: @google.image_url
    fill_in "Source", with: @google.source
    fill_in "Title", with: @google.title
    fill_in "Title Url", with: @google.title_url
    click_on "Update Google"

    assert_text "Google was successfully updated"
    click_on "Back"
  end

  test "destroying a Google" do
    visit googles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Google was successfully destroyed"
  end
end
