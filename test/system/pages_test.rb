require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
  setup do
    @page = pages(:one)
  end

  test "visiting the index" do
    visit pages_url
    assert_selector "h1", text: "Pages"
  end

  test "creating a Page" do
    visit pages_url
    click_on "New Page"

    fill_in "String 1", with: @page.string_1
    fill_in "String 10", with: @page.string_10
    fill_in "String 11", with: @page.string_11
    fill_in "String 12", with: @page.string_12
    fill_in "String 13", with: @page.string_13
    fill_in "String 14", with: @page.string_14
    fill_in "String 15", with: @page.string_15
    fill_in "String 2", with: @page.string_2
    fill_in "String 3", with: @page.string_3
    fill_in "String 4", with: @page.string_4
    fill_in "String 5", with: @page.string_5
    fill_in "String 6", with: @page.string_6
    fill_in "String 7", with: @page.string_7
    fill_in "String 8", with: @page.string_8
    fill_in "String 9", with: @page.string_9
    fill_in "Template One", with: @page.template_one_id
    fill_in "Title", with: @page.title
    fill_in "Url", with: @page.url
    click_on "Create Page"

    assert_text "Page was successfully created"
    click_on "Back"
  end

  test "updating a Page" do
    visit pages_url
    click_on "Edit", match: :first

    fill_in "String 1", with: @page.string_1
    fill_in "String 10", with: @page.string_10
    fill_in "String 11", with: @page.string_11
    fill_in "String 12", with: @page.string_12
    fill_in "String 13", with: @page.string_13
    fill_in "String 14", with: @page.string_14
    fill_in "String 15", with: @page.string_15
    fill_in "String 2", with: @page.string_2
    fill_in "String 3", with: @page.string_3
    fill_in "String 4", with: @page.string_4
    fill_in "String 5", with: @page.string_5
    fill_in "String 6", with: @page.string_6
    fill_in "String 7", with: @page.string_7
    fill_in "String 8", with: @page.string_8
    fill_in "String 9", with: @page.string_9
    fill_in "Template One", with: @page.template_one_id
    fill_in "Title", with: @page.title
    fill_in "Url", with: @page.url
    click_on "Update Page"

    assert_text "Page was successfully updated"
    click_on "Back"
  end

  test "destroying a Page" do
    visit pages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Page was successfully destroyed"
  end
end
