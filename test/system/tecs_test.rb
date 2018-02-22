require "application_system_test_case"

class TecsTest < ApplicationSystemTestCase
  setup do
    @tec = tecs(:one)
  end

  test "visiting the index" do
    visit tecs_url
    assert_selector "h1", text: "Tecs"
  end

  test "creating a Tec" do
    visit tecs_url
    click_on "New Tec"

    fill_in "Image Url", with: @tec.image_url
    fill_in "Source", with: @tec.source
    fill_in "Title", with: @tec.title
    fill_in "Title Url", with: @tec.title_url
    click_on "Create Tec"

    assert_text "Tec was successfully created"
    click_on "Back"
  end

  test "updating a Tec" do
    visit tecs_url
    click_on "Edit", match: :first

    fill_in "Image Url", with: @tec.image_url
    fill_in "Source", with: @tec.source
    fill_in "Title", with: @tec.title
    fill_in "Title Url", with: @tec.title_url
    click_on "Update Tec"

    assert_text "Tec was successfully updated"
    click_on "Back"
  end

  test "destroying a Tec" do
    visit tecs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tec was successfully destroyed"
  end
end
